defmodule Nebula.Stellar.Dgraph.Schema.Asset do
  @moduledoc """
  """

  alias DgraphEx.Core.Vertex
  use Vertex

  vertex :"stellar:asset" do
    field(:"stellar:asset", :bool)
    field(:"stellar:asset:code", :string, index: [:hash])
    field(:"stellar:asset:issuer", :string, index: [:hash])
    field(:"stellar:asset:type", :string)
  end
end
