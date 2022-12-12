defmodule FlowCSVEx.Generator.Country do
  @moduledoc """
  Country generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  def name(), do: "country"
  def switch(), do: [country: :string]
  def value(), do: Faker.Address.En.country()
  def assertion(value), do: fn data -> data[name()] == value end
end
