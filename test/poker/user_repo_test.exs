defmodule Poker.UserRepoTest do
  use ExUnit.Case, async: true

  setup do
    {:ok, pid} = start_supervised Poker.UserRepo
    %{repo: pid}
  end

  test "should be alive", %{repo: repo} do
    assert Process.alive?(repo)
  end

  describe "#foo" do

    test "should return pid", %{repo: repo} do
      assert Poker.UserRepo.foo("msg", repo) === repo
    end
  end
end
