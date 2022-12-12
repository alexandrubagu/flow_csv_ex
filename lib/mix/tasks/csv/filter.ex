defmodule Mix.Tasks.Csv.Filter do
  @moduledoc "Printed when the user requests `mix help echo`"
  @shortdoc "Echoes arguments"

  use Mix.Task

  @impl Mix.Task
  def run(args) do
    Mix.shell().info(Enum.join(args, " "))
  end
end
