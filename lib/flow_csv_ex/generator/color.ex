defmodule FlowCSVEx.Generator.Color do
  @moduledoc """
  Color generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  @spec name() :: binary()
  def name(), do: "color"

  @spec switch() :: keyword()
  def switch(), do: [color: :string]

  @spec value() :: binary()
  def value(), do: Faker.Color.name()

  @spec assertion(any(), any()) :: boolean
  def assertion(filter, value), do: filter == value
end
