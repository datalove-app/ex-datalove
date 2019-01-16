defmodule Nebula.Stellar.Sql.Schema.Offer do
  @moduledoc """
  """
  use Ecto.Schema

  schema "offers" do
    field(:offer_id, :integer, source: :offerid, primary_key: true)
    field(:seller_id, :string, source: :sellerid)
    field(:selling_asset_type, :integer, source: :sellingassettype)
    field(:selling_asset_code, :string, source: :sellingassetcode)
    field(:selling_issuer, :string, source: :sellingissuer)
    field(:buying_asset_type, :integer, source: :buyingassettype)
    field(:buying_asset_code, :string, source: :buyingassetcode)
    field(:buying_issuer, :string, source: :buyingissuer)
    field(:amount, :integer)
    field(:price_n, :integer, source: :pricen)
    field(:price_d, :integer, source: :priced)
    field(:price, :decimal)
    field(:flags, :integer)
    field(:last_modified, :integer, source: :lastmodified)
  end
end
