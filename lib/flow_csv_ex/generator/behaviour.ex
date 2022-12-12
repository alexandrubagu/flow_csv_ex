defmodule FlowCSVEx.Generator.Behaviour do
  @moduledoc """
  Represents the behaviour for
  """

  @callback name() :: binary()
  @callback switch() :: keyword()
  @callback value() :: any()
  @callback assertion(any(), any()) :: boolean()
end
