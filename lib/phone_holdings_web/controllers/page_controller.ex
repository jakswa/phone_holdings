defmodule PhoneHoldingsWeb.PageController do
  use PhoneHoldingsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
