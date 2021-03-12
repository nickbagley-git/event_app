defmodule EventApp.Repo.Migrations.CreateResponses do
  use Ecto.Migration

  def change do
    create table(:responses) do
      add :body, :text
      add :event_id, references(:events), null: false
      add :user_id, references(:users), null: false

      timestamps()
    end
  end
end
