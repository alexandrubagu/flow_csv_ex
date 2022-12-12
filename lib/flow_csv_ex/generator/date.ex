defmodule FlowCSVEx.Generator.Date do
  @moduledoc """
  Date generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  @spec name() :: binary()
  def name(), do: "date"

  @spec switch() :: keyword()
  def switch(), do: [date: :string]

  @spec value() :: Date.t()
  def value(), do: Faker.Date.between(~D[2011-01-01], ~D[2021-01-01])

  @spec assertion(any(), any()) :: boolean
  def assertion(filter, value), do: filter == value
end
