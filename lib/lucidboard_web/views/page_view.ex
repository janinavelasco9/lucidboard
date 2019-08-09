defmodule LucidboardWeb.PageView do
  use LucidboardWeb, :view

  @changelog_html [File.cwd!(), "CHANGELOG.md"]
                  |> Path.join()
                  |> File.read!()
                  |> Earmark.as_html!()

  def render("changelog.html", _params) do
    raw(@changelog_html)
  end
end
