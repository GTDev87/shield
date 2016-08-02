defmodule Shield.ErrorViewTest do
  use Shield.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 404.json" do
    assert render(Shield.ErrorView, "404.json", []) ==
           %{errors: %{details: "Not found!"}}
  end

  test "render 500.json" do
    assert render(Shield.ErrorView, "500.json", []) ==
           %{errors: %{details: "Internal server error."}}
  end

  test "render any other" do
    assert render(Shield.ErrorView, "505.json", []) ==
           %{errors: %{details: "Internal server error."}}
  end
end
