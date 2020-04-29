defmodule LivebuttonWeb.LightLive do
  use LivebuttonWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :brightness, 10)
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <h1>Front Porch Light</h1>
    <div id="light">
      <div class="meter">
        <span style="width: <%= @brightness %>px">
        <%= @brightness %>
        </span>
      </div>
    </div>
    """
  end
end
