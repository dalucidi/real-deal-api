defmodule RealDealApiWeb.DefaultController do
  use RealDealApiWeb, :controller

  def index(conn, _params) do
    text conn, "This API works! - #{Mix.env()}"
  end

end
