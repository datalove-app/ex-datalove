defmodule Nebula.Stellar.Sql.Schema.Account do
  @moduledoc """
  """
  use Ecto.Schema

  schema "accounts" do
    field(:account_id, :string, source: :accountid, primary_key: true)
    field(:balance, :integer)
    field(:sequence, :integer, source: :seqnum)
    field(:subentries_count, :integer, source: :numsubentries)
    field(:inflation_dest, :string, source: :inflationdest)
    field(:home_domain, :string, source: :homedomain)
    field(:thresholds, :string)
    field(:flags, :integer)
  end
end
