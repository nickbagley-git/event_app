defmodule EventApp.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :email, :string, null: false
      add :photo_hash, :text

      timestamps()
    end
    alter table(:events) do
      add :user_id, references(:users), null: false
    end

  end
end
