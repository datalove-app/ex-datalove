defmodule Nebula.Stellar.Dgraph.Schema.Account do
  @moduledoc """
  """

  alias DgraphEx.Core.Vertex
  use Vertex

  vertex :"stellar:account" do
    field(:"stellar:account", :bool)
    field(:"stellar:account:address", :string, index: [:hash])
  end
end
