defmodule DevNull.Router do
  use Plug.Router

  plug(Plug.Parsers, parsers: [:urlencoded], pass: ["text/*", "application/json"])
  plug(:match)
  plug(:dispatch)

  post "/statements" do
    send_resp(conn, 202, "")
  end

  put "/:status" do
    send_resp(conn, String.to_integer(status), "")
  end

  get "/:status" do
    send_resp(conn, String.to_integer(status), "")
  end

  post "/:status" do
    send_resp(conn, String.to_integer(status), "")
  end

  put "/:status/*" do
    send_resp(conn, String.to_integer(status), "")
  end

  get "/:status/*" do
    send_resp(conn, String.to_integer(status), "")
  end

  post "/:status/*" do
    send_resp(conn, String.to_integer(status), "")
  end
end
