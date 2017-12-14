defmodule PhoneHoldingsWeb.Router do
  use PhoneHoldingsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoneHoldingsWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/sip", PhoneHoldingsWeb do
    post "/:user/dial", SipController, :dial_user
    post "/outbound", SipController, :dial_outbound
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoneHoldingsWeb do
  #   pipe_through :api
  # end
end
