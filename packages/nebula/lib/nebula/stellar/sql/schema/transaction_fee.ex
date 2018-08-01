defmodule Nebula.Stellar.Sql.Schema.TransactionFee do
  @moduledoc """
  """

  use Ecto.Schema

  @primary_key {:pkey, :string, [source: :txfeehistory_pkey, virtual: true]}

  schema "txfeehistory" do
    field(:tx_id, :string, source: :txid)
    field(:ledger_sequence, :integer, source: :ledgerseq)
    field(:index, :integer, source: :txindex)
    field(:changes, :string, source: :txchanges)
  end
end
