defmodule Nebula.Stellar.Dgraph.Schema.Operation do
  @moduledoc """
  """

  alias DgraphEx.Core.Vertex
  use Vertex

  vertex :"stellar:operation" do
    field(:"stellar:operation", :bool)
    field(:"stellar.operation.transaction_id", :uid, reverse: true)
    field(:"stellar.operation.transaction_hash", :string, index: [:hash])
    field(:"stellar.operation.source_account", :string, index: [:hash])
    field(:"stellar.operation.type", :string, index: [:hash])
    field(:"stellar.operation.application_order", :int, index: [:int])
    field(:"stellar.operation.details", :string)
  end
end
