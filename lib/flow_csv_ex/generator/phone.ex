defmodule FlowCSVEx.Generator.Phone do
  @moduledoc """
  Phone generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  @spec name() :: binary()
  def name(), do: "phone"

  @spec switch() :: keyword()
  def switch(), do: [phone: :string]

  @spec value() :: binary()
  def value(), do: Faker.Phone.EnUs.phone()

  @spec assertion(any(), any()) :: boolean
  def assertion(filter, value), do: filter == value
end
