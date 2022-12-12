defmodule FlowCSVEx.Generator.Date do
  @moduledoc """
  Date generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  def name(), do: "date"
  def switch(), do: [date: :string]
  def value(), do: Faker.Date.between(~D[2011-01-01], ~D[2021-01-01])
  def assertion(value), do: fn data -> data[name()] == value end
end
