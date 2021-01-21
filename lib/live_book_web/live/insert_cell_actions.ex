defmodule LiveBookWeb.InsertCellActions do
  use LiveBookWeb, :live_component

  def render(assigns) do
    ~L"""
    <div class="opacity-0 hover:opacity-100 flex space-x-2 justify-center items-center">
      <%= line() %>
      <button
        phx-click="insert_cell"
        phx-value-type="markdown"
        phx-value-section_id="<%= @section_id %>"
        phx-value-index="<%= @index %>"
        class="py-1 px-2 rounded text-sm hover:bg-gray-100 border border-gray-200 bg-gray-50">
        + Markdown
      </button>
      <button
        phx-click="insert_cell"
        phx-value-type="elixir"
        phx-value-section_id="<%= @section_id %>"
        phx-value-index="<%= @index %>"
        class="py-1 px-2 rounded text-sm hover:bg-gray-100 border border-gray-200 bg-gray-50">
        + Elixir
      </button>
      <%= line() %>
    </div>
    """
  end

  defp line() do
    ~e"""
    <div class="border-t-2 border-dashed border-gray-200 flex-grow"></div>
    """
  end
end