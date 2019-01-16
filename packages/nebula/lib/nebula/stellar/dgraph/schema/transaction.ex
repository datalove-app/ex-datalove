defmodule Nebula.Stellar.Dgraph.Schema.Transaction do
  @moduledoc """
  """

  alias DgraphEx.Core.Vertex
  use Vertex

  vertex :"stellar:transaction" do
    field(:"stellar:transaction", :bool,
      facets: [
        created_at: :datetime,
        updated_at: :datetime,
        valid_after: :int,
        valid_before: :int
      ]
    )

    field(:"stellar.transaction.transaction_hash", :string, index: [:hash])
    field(:"stellar.transaction.ledger_sequence", :string, index: [:int])
    field(:"stellar.transaction.account", :string, index: [:hash])
    field(:"stellar.transaction.account_sequence", :string, index: [:int])
    field(:"stellar.transaction.application_order", :string, index: [:int])
    field(:"stellar.transaction.memo", :string, index: [:exact, :trigram])
    field(:"stellar.transaction.operation_count", :int)
    field(:"stellar.transaction.fee_paid", :int)
    field(:"stellar.transaction.tx_envelope", :string)
    field(:"stellar.transaction.tx_meta", :string)
    field(:"stellar.transaction.tx_fee_meta", :string)
    field(:"stellar.transaction.tx_result", :string)
    field(:"stellar.transaction.signatures", :string)
    field(:"stellar.transaction.memo_type", :string)
  end
end
