defmodule Phblog.PageController do
  use Phblog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
