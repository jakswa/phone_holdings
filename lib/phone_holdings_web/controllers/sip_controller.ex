defmodule PhoneHoldingsWeb.SipController do
  use PhoneHoldingsWeb, :controller

  def dial_user(conn, %{"user" => user}) do
    render(conn, "dial_user.xml", address: user <> "@" <> System.get_env("SIP_HOST"))
  end

  def dial_outbound(conn, %{"To" => to}) do
    number = String.split(to, [":", "@"])
             |> Enum.at(1)
    render(conn, "dial_outbound.xml", number: number, caller_id: System.get_env("CALLER_ID"))
  end
end
