defmodule Livebutton.Repo do
  use Ecto.Repo,
    otp_app: :livebutton,
    adapter: Ecto.Adapters.Postgres
end
