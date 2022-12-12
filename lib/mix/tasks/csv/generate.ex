defmodule Mix.Tasks.Csv.Generate do
  @moduledoc "Generates a CSV file based on given count"
  @shortdoc "Generates a CSV file based on given count"

  use Mix.Task

  @switches [number: :integer]

  @impl Mix.Task
  @spec run([binary]) :: :ok
  def run(args) do
    {opts, _parsed, invalid_opts} = OptionParser.parse(args, strict: @switches)

    if valid_opts(opts, invalid_opts),
      do: generate_csv(opts),
      else: show_help()

    :ok
  end

  defp valid_opts([], [_ | _]), do: false
  defp valid_opts([], []), do: false
  defp valid_opts([_ | _], []), do: true

  defp generate_csv(opts) do
    number = Keyword.get(opts, :number)

    FlowCSVEx.Generator.run()
    |> Stream.take(number)
    |> CSV.encode()
    |> Stream.into(File.stream!("input.csv", [:write, :utf8]))
    |> Stream.run()
  end

  defp show_help() do
    Mix.shell().info("""
      Allowed options:

      --number   - How many lines to be generated
    """)
  end
end
