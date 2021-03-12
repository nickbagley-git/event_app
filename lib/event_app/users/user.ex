defmodule EventApp.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :name, :string
    field :photo_hash, :string
    has_many :events, EventApp.Events.Event
    has_many :comments, EventApp.Comments.Comment
    has_many :invites, EventApp.Invites.Invite
    has_many :responses, EventApp.Responses.Response

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :photo_hash])
    |> validate_required([:name, :email, :photo_hash])
  end
end
