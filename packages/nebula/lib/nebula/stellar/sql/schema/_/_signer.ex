defmodule Nebula.Stellar.Sql.Schema.Signer do
  @moduledoc """
  """

  use Ecto.Schema

  schema "signers" do
    field(:account_id, :string, source: :accountid, primary_key: true)
    field(:public_key, :string, source: :publickey, primary_key: true)
    field(:weight, :integer)
  end
end
