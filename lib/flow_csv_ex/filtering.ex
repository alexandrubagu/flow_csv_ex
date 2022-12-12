defmodule FlowCSVEx.Filtering do
  @moduledoc false

  @generators Application.compile_env(:flow_csv_ex, :generators)
  @generators_lookup Map.new(@generators, &{&1.name(), &1})

  def run(stream, opts) do
    filters = Enum.map(opts, fn {key, value} -> @generators_lookup["#{key}"].assertion(value) end)

    Stream.filter(stream, &valid_row?(&1, filters))
  end

  defp valid_row?(data, filters), do: Enum.all?(filters, & &1.(data))
end
