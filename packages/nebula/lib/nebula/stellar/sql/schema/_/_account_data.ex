defmodule Nebula.Stellar.Sql.Schema.AccountData do
  @moduledoc """
  """

  use Ecto.Schema

  schema "accountdata" do
    field(:account_id, :string, source: :accountid, primary_key: true)
    field(:name, :string, source: :dataname, primary_key: true)
    field(:value, :string, source: :datavalue)
  end
end
