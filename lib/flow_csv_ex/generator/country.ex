defmodule FlowCSVEx.Generator.Country do
  @moduledoc """
  Country generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  @spec name() :: binary()
  def name(), do: "country"

  @spec switch() :: keyword()
  def switch(), do: [country: :string]

  @spec value() :: binary()
  def value(), do: Faker.Address.En.country()

  @spec assertion(any(), any()) :: boolean
  def assertion(filter, value), do: filter == value
end
