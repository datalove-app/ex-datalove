defmodule Nebula.Stellar.Sql.Schema.Trustline do
  @moduledoc """
  """

  use Ecto.Schema

  schema "trustlines" do
    field(:account_id, :string, source: :accountid, primary_key: true)
    field(:issuer, :integer, source: :issuer, primary_key: true)
    field(:asset_code, :string, source: :assetcode, primary_key: true)
    field(:asset_type, :integer, source: :assettype)
    field(:limit, :integer, source: :tlimit)
    field(:balance, :integer)
    field(:flags, :integer)
    field(:last_modified, :integer)
  end
end
