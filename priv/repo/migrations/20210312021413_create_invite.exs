defmodule EventApp.Repo.Migrations.CreateInvite do
  use Ecto.Migration

  def change do
    create table(:invite) do
      add :name, :text
      add :event_id, references(:events), null: false
      add :user_id, references(:users), null: false

      timestamps()
    end
  end
end
