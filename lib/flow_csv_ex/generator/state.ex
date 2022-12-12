defmodule FlowCSVEx.Generator.State do
  @moduledoc """
  State generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  @spec name() :: binary()
  def name(), do: "state"

  @spec switch() :: keyword()
  def switch(), do: [state: :string]

  @spec value() :: binary()
  def value(), do: Faker.Address.state()

  @spec assertion(any(), any()) :: boolean
  def assertion(filter, value), do: filter == value
end
