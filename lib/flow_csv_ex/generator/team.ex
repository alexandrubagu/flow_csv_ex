defmodule FlowCSVEx.Generator.Team do
  @moduledoc """
  Team generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  @spec name() :: binary()
  def name(), do: "team"

  @spec switch() :: keyword()
  def switch(), do: [team: :string]

  @spec value() :: binary()
  def value(), do: Faker.Team.name()

  @spec assertion(any(), any()) :: boolean
  def assertion(filter, value), do: filter == value
end
