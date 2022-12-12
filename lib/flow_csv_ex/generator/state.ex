defmodule FlowCSVEx.Generator.State do
  @moduledoc """
  State generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  def name(), do: "state"
  def switch(), do: [state: :string]
  def value(), do: Faker.Address.state()
  def assertion(value), do: fn data -> data[name()] == value end
end
