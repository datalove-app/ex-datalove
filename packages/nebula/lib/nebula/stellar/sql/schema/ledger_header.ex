defmodule Nebula.Stellar.Sql.Schema.LedgerHeader do
  @moduledoc """
  """

  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:ledger_hash, :string, [source: :ledgerhash]}
  @fields [
    :ledger_hash,
    :prev_hash,
    :bucket_list_hash,
    :ledger_seq,
    :close_time,
    :data
  ]

  schema "ledgerheaders" do
    field(:prev_hash, :string, source: :prevhash)
    field(:bucket_list_hash, :string, source: :bucketlisthash)
    field(:ledger_seq, :integer, source: :ledgerseq)
    field(:close_time, :integer, source: :closetime)
    field(:data, :string)
  end
end
