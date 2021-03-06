# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :challenge_api,
  ecto_repos: [ChallengeApi.Repo]

# Configures the endpoint
config :challenge_api, ChallengeApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Rz8Nnstfqb3jWrUtjBoBaVWGdIfH9OZVX4kMD7gDOzulxjrH+9+vPAkV9hvXE8sY",
  render_errors: [view: ChallengeApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChallengeApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian configuration
config :challenge_api, ChallengeApi.Guardian,
  issuer: "challenge_api",
  secret_key: "RK/PV0SsnfcKaT2BexEluBivn8AKy35c22pAhGbdzUdrK9QpBfuqxdQf1QLeP6XB"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
