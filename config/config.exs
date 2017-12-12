# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phone_holdings,
  ecto_repos: [PhoneHoldings.Repo]

# Configures the endpoint
config :phone_holdings, PhoneHoldingsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zhYL7Pzhx2bz/krtPojUM5h7rXid600BoMF+gRSjH+y74ml53B7w1G8ON3lDnuXC",
  render_errors: [view: PhoneHoldingsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoneHoldings.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
