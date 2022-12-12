defmodule FlowCSVEx.Generator.Team do
  @moduledoc """
  Team generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  def name(), do: "team"
  def switch(), do: [team: :string]
  def value(), do: Faker.Team.name()
  def assertion(value), do: fn data -> data[name()] == value end
end
