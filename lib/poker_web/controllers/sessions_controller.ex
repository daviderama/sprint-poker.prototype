defmodule PokerWeb.SessionsController do
  use PokerWeb, :controller

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, %{"name" => _name}) do
    redirect conn, to: "/"
  end
end
