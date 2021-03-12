defmodule EventAppWeb.Helpers do

  def have_current_user?(conn) do
    conn.assigns[:current_user] != nil
  end

  def current_user_is?(conn, user_id) do
    user = conn.assigns[:current_user]
    user && user.id == user_id
  end

  def current_user_id(conn) do
    user = conn.assigns[:current_user]
    user && user.id
  end

  def current_user_email(conn) do
    user = conn.assigns[:current_user]
    user && user.email
  end

  def current_user_responses(conn) do
    user = conn.assigns[:current_user]
    user && user.responses
  end

  def current_user_name(conn) do
    user = conn.assigns[:current_user]
    user && user.name
  end
end
