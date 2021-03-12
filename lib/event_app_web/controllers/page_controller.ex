defmodule EventAppWeb.PageController do
  use EventAppWeb, :controller

  alias EventApp.Events
  alias EventApp.Invites
  alias EventApp.Users
  alias EventApp.Events.Event
  alias EventApp.Invites.Invite
  alias EventApp.Users.User



  def index(conn, _params) do
    events = Events.list_events()
    invites = Invites.list_invite()
    users = Users.list_users()
    render(conn, "index.html", events: events, invites: invites, users: users)
  end
end
