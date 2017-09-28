defmodule Slef do
  @moduledoc """
  # A simple module to provide a cure for your typos.
  """

  @doc """
  Generate a macro that calls self() for each atom in `Slef.Permutations.get`.
  """
  for slf <- Slef.Permutations.get do
    def unquote(slf)() do
      IO.warn("typed #{unquote slf}() instead of self()", [])
      self()
    end
  end

  def __using__(_opts) do
    quote do
      import Slef
    end
  end
end
