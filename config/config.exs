# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tailwind,
  ecto_repos: [Tailwind.Repo]

# Configures the endpoint
config :tailwind, TailwindWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kDEEzXoFuHyD1M+er/uIHULTkZ/DpuEgQQL/0y6e/g9Y4pis5wCsPa8I4WhQepTZ",
  render_errors: [view: TailwindWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Tailwind.PubSub,
  live_view: [signing_salt: "BaMTp8nD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
