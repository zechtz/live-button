defmodule LiveViewWeb.LicenseLive do
  use LiveViewWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, seats: 2, amount: 2)}
  end

  def render(assigns) do
    ~L"""
    ...
    """
  end
end
