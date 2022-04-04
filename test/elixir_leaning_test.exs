defmodule ElixirLeaningTest do
  use ExUnit.Case
  doctest ElixirLeaning

  test "greets the world" do
    assert ElixirLeaning.hello() == :world
  end
end
