defmodule FlowCSVEx.Generator.IpAddress do
  @moduledoc """
  IpAddress generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  @spec name() :: binary()
  def name(), do: "ip_address"

  @spec switch() :: keyword()
  def switch(), do: [ip_address: :string]

  @spec value() :: binary()
  def value(), do: Faker.Internet.ip_v4_address()

  @spec assertion(any(), any()) :: boolean
  def assertion(filter, value), do: filter == value
end
