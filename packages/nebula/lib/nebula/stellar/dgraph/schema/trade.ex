defmodule Nebula.Stellar.Dgraph.Schema.Trade do
  @moduledoc """
  """

  alias DgraphEx.Core.Vertex
  use Vertex

  vertex :"stellar:trade" do
    field(:"stellar:trade", :bool)
    field(:"stellar.trade.operation_id", :uid, reverse: true)
    field(:"stellar.trade.offer_id", :string, index: [:hash])
    field(:"stellar.trade.base_account", :string, index: [:hash])
    field(:"stellar.trade.base_asset_code", :string, index: [:hash])
    field(:"stellar.trade.base_asset_issuer", :string, index: [:hash])
    field(:"stellar.trade.base_amount", :int, index: [:int])
    field(:"stellar.trade.counter_account", :string, index: [:hash])
    field(:"stellar.trade.counter_asset_code", :string, index: [:hash])
    field(:"stellar.trade.counter_asset_issuer", :string, index: [:hash])
    field(:"stellar.trade.counter_amount", :int, index: [:int])
    field(:"stellar.trade.base_is_seller", :bool)
    field(:"stellar.trade.base_asset_type", :string)
    field(:"stellar.trade.counter_asset_type", :string)
    field(:"stellar.trade.order", :int)
    field(:"stellar.trade.price_n", :int)
    field(:"stellar.trade.price_d", :int)
  end
end
