defmodule Nebula do
  @moduledoc File.read!(__DIR__ <> "/../README.md")

  use Application

  def start(_type, _args) do
    children = [
      Nebula.Stellar.Sql.Repo
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
