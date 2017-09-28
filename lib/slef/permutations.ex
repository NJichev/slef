defmodule Slef.Permutations do
  @moduledoc """
  This module provides the permutations functionality that is missing from
  from the List module.

  It generates all permutations of the word `:self`.
  """

  @doc """
  Create all permutations of the word `:self`, map them to atoms since
  defmacro takes in an atom and then remove `:self` itself.
  """
  def get do
   (of(["s", "e", "l", "f"])
      |> Enum.map(&Enum.join(&1))
      |> Enum.map(&String.to_atom/1)) -- [:self]
  end

  defp of([]), do: [[]]
  defp of(list) do
    for h <- list, t <- of(list -- [h]), do: [h | t]
  end
end
