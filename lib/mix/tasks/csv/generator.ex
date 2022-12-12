defmodule Mix.Tasks.CSV.Generator do
  @moduledoc "Generates a csv file"

  use Mix.Task

  @switches [
    number: :string
  ]

  @impl Mix.Task
  def run(args) do
    {opts, parsed} = OptionParser.parse!(args, strict: @switches)

    IO.inspect(opts, parsed)
  end
end
