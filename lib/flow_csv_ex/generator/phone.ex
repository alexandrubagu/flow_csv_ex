defmodule FlowCSVEx.Generator.Phone do
  @moduledoc """
  Phone generator
  """

  @behaviour FlowCSVEx.Generator.Behaviour

  def name(), do: "phone"
  def switch(), do: [phone: :string]
  def value(), do: Faker.Phone.EnUs.phone()
  def assertion(value), do: fn data -> data[name()] == value end
end
