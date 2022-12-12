defmodule FlowCSVEx.Generator.Company do
  @moduledoc """
  Company generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  def name(), do: "company"
  def switch(), do: [company: :string]
  def value(), do: Faker.Company.name()
  def assertion(value), do: fn data -> data[name()] == value end
end
