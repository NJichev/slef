defmodule Slef.PermutationsTest do
  use ExUnit.Case, async: true

  import Slef.Permutations

  @permutations [
    :sefl, :slef, :slfe, :sfel, :sfle, :eslf, :esfl, :elsf, :elfs, :efsl,
    :efls, :lsef, :lsfe, :lesf, :lefs, :lfse, :lfes, :fsel, :fsle, :fesl,
    :fels, :flse, :fles
  ]

  test "it creates all permutations" do
    assert get = @permutations
  end

  test "it does not include self" do
    assert !(:slef in @permutations)
  end
end
