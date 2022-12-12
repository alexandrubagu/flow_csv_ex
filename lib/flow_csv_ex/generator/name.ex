defmodule FlowCSVEx.Generator.Name do
  @moduledoc """
  Name generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  @spec name() :: binary()
  def name(), do: "name"

  @spec switch() :: keyword()
  def switch(), do: [name: :string]

  @spec value() :: binary()
  def value(), do: Faker.Person.name()

  @spec assertion(any(), any()) :: boolean
  def assertion(filter, value), do: filter == value
end
