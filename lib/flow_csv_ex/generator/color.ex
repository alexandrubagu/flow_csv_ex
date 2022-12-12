defmodule FlowCSVEx.Generator.Color do
  @moduledoc """
  Color generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  def name(), do: "color"
  def switch(), do: [color: :string]
  def value(), do: Faker.Color.name()
  def assertion(value), do: fn data -> data[name()] == value end
end
