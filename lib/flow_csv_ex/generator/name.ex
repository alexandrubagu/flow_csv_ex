defmodule FlowCSVEx.Generator.Name do
  @moduledoc """
  Name generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  def name(), do: "name"
  def switch(), do: [name: :string]
  def value(), do: Faker.Person.name()
  def assertion(value), do: fn data -> data[name()] == value end
end
