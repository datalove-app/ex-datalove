defmodule Nebula.Stellar.Sql.Schema.Transaction do
  @moduledoc """
  """

  use Ecto.Schema

  @primary_key {:pkey, :string, [source: :txhistory_pkey, virtual: true]}

  schema "txhistory" do
    field(:tx_id, :string, source: :txid)
    field(:ledger_sequence, :integer, source: :ledgerseq)
    field(:index, :integer, source: :txindex)
    field(:body, :string, source: :txbody)
    field(:result, :string, source: :txresult)
    field(:meta, :string, source: :txmeta)
  end
end
