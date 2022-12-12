defmodule FlowCSVEx.Generator do
  @moduledoc false

  @generators Application.compile_env(:flow_csv_ex, :generators)

  def run() do
    headers = [Enum.map(@generators, & &1.name())]

    content = Stream.repeatedly(fn -> Enum.map(@generators, & &1.value()) end)
    Stream.concat(headers, content)
  end
end
