defmodule LiveViewWeb.PaginateLive do
  use LiveViewWeb, :live_view

  alias LiveView.Donations

  def mount(_params, _session, socket) do
    donations = Donations.list_donations()

    socket =
      assign(socket,
        donations: donations
      )

    {:ok, socket, temporary_assigns: [donations: []]}
  end

  defp expires_class(donation) do
    if Donations.almost_expired?(donation), do: "eat-now", else: "fresh"
  end
end
