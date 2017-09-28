defmodule SlefTest do
  use ExUnit.Case
  doctest Slef

  import ExUnit.CaptureIO

  @permutations [
    :sefl, :slef, :slfe, :sfel, :sfle, :eslf, :esfl, :elsf, :elfs, :efsl,
    :efls, :lsef, :lsfe, :lesf, :lefs, :lfse, :lfes, :fsel, :fsle, :fesl,
    :fels, :flse, :fles
  ]

  test "all permutations are functions" do
    capture_io(:stderr, fn ->
      assert (@permutations |> Enum.all?(fn x -> self() == apply(Slef, x, []) end))
    end)
  end

  test "it warns for typos" do
    warning = capture_io(:stderr, fn ->
      Slef.slef()
    end)
    assert match?(~r/(.*)warning(.*)/, warning)
  end
end
