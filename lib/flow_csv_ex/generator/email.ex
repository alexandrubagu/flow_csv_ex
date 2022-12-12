defmodule FlowCSVEx.Generator.Email do
  @moduledoc """
  Email generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  def name(), do: "email"
  def switch(), do: [email: :string]
  def value(), do: Faker.Internet.email()
  def assertion(value), do: fn data -> data[name()] == value end
end
