defmodule Rebar3TestTest do
  use ExUnit.Case
  doctest Rebar3Test

  test "greets the world" do
    assert Rebar3Test.hello() == :world
  end
end
