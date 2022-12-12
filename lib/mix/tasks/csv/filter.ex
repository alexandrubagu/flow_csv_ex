defmodule Mix.Tasks.Csv.Filter do
  @moduledoc "Creates a new CSV file with filters applied as arguments"
  @shortdoc "Creates a new CSV file based on given file with filters applied"

  use Mix.Task

  @generators Application.compile_env(:flow_csv_ex, :generators)
  @switches Enum.flat_map(@generators, & &1.switch())
  @csv_headers Enum.map(@generators, & &1.name())

  @impl Mix.Task
  def run(args) do
    {opts, _parsed, invalid_opts} = OptionParser.parse(args, strict: @switches)

    if valid_opts(opts, invalid_opts),
      do: filter_csv(opts),
      else: show_help()

    :ok
  end

  defp valid_opts([], [_ | _]), do: false
  defp valid_opts([], []), do: false
  defp valid_opts([_ | _], []), do: true

  defp filter_csv(opts) do
    "input.csv"
    |> File.stream!()
    |> CSV.decode!(headers: @csv_headers)
    |> FlowCSVEx.Filtering.run()
    |> Stream.into(File.stream!("output.csv", [:write, :utf8]))
    |> Stream.run()
  end

  defp show_help() do
    inject =
      @switches
      |> Enum.map(fn {name, _type} -> "  --#{name}" end)
      |> Enum.join("\n")

    Mix.shell().info("Available filtering options:\n\n#{inject}")
  end
end
