defmodule FlowCSVEx.Generator.Company do
  @moduledoc """
  Company generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  @spec name() :: binary()
  def name(), do: "company"

  @spec switch() :: keyword()
  def switch(), do: [company: :string]

  @spec value() :: binary()
  def value(), do: Faker.Company.name()

  @spec assertion(any(), any()) :: boolean
  def assertion(filter, value), do: filter == value
end
