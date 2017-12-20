defmodule Poker.UserRepo do
  use GenServer

  # === Client

  def start_link(opts) do
    GenServer.start_link __MODULE__, %{}, opts
  end

  def foo(msg, repo) do
    GenServer.call repo, {:foo, msg}
  end

  # === Server

  def start(initial_state) do
    {:ok, initial_state}
  end

  def handle_call({:foo, msg}, _from, state) do
    IO.puts("Hello from: #{msg} in #{inspect self()}")
    {:reply, self(), state}
  end

end
