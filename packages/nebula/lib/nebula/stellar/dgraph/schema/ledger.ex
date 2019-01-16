defmodule Nebula.Stellar.Dgraph.Schema.Ledger do
  @moduledoc """
  """

  alias DgraphEx.Core.Vertex
  use Vertex

  vertex :"stellar:ledger" do
    field(:"stellar:ledger", :bool)
    field(:"stellar:ledger:importer_version", :int, index: [:int])
    field(:"stellar:ledger:protocol_version", :int, index: [:int])
    field(:"stellar:ledger:sequence", :int, index: [:int])
    field(:"stellar:ledger:hash", :string, index: [:hash])
    field(:"stellar:ledger:prev_hash", :string, index: [:hash])
    field(:"stellar:ledger:closed_at", :datetime, index: [:hour])
    field(:"stellar:ledger:transaction_count", :int)
    field(:"stellar:ledger:operation_count", :int)
    field(:"stellar:ledger:total_coins", :int)
    field(:"stellar:ledger:fee_pool", :int)
    field(:"stellar:ledger:base_fee", :int)
    field(:"stellar:ledger:base_reserve", :int)
    field(:"stellar:ledger:max_tx_set_size", :int)
    field(:"stellar:ledger:header", :string)

    field(:"stellar:ledger:created_at", :datetime)
    field(:"stellar:ledger:updated_at", :datetime)
  end
end
