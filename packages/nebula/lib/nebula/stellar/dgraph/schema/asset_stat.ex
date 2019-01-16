defmodule Nebula.Stellar.Dgraph.Schema.AssetStat do
  @moduledoc """
  """

  alias DgraphEx.Core.Vertex
  use Vertex

  vertex :asset_stat do
    field(:asset_stat, :bool)
    field(:amount, :int)
    field(:num_accounts, :int)
    field(:flags, :int)
    field(:toml, :string)
  end
end
