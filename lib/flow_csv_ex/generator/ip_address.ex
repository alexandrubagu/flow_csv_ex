defmodule FlowCSVEx.Generator.IpAddress do
  @moduledoc """
  IpAddress generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  def name(), do: "ip_address"
  def switch(), do: [ip_address: :string]
  def value(), do: Faker.Internet.ip_v4_address()
  def assertion(value), do: fn data -> data[name()] == value end
end
