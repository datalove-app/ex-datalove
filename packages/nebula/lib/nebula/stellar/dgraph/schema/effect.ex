defmodule Nebula.Stellar.Dgraph.Schema.Effect do
  @moduledoc """
  """

  alias DgraphEx.Core.Vertex
  use Vertex

  vertex :"stellar:effect" do
    field(:"stellar:effect", :bool)
    field(:"stellar:effect:account_id", :uid, reverse: true)
    field(:"stellar:effect:operation_id", :uid, reverse: true)
    field(:"stellar:effect:account", :string, index: [:hash])
    field(:"stellar:effect:type", :int, index: [:int])
    field(:"stellar:effect:order", :int)
    field(:"stellar:effect:details", :string)
  end
end
