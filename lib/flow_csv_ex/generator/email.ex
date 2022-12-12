defmodule FlowCSVEx.Generator.Email do
  @moduledoc """
  Email generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  @spec name() :: binary()
  def name(), do: "email"

  @spec switch() :: keyword()
  def switch(), do: [email: :string]

  @spec value() :: binary()
  def value(), do: Faker.Internet.email()

  @spec assertion(any(), any()) :: boolean
  def assertion(filter, value), do: filter == value
end
