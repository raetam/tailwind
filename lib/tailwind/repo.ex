defmodule Tailwind.Repo do
  use Ecto.Repo,
    otp_app: :tailwind,
    adapter: Ecto.Adapters.Postgres
end
