defmodule Nebula.Ingester do
  @moduledoc """
  """

  alias DgraphEx.Client
  alias Nebula.Stellar.{Dgraph, Sql}
  alias Dgraph.Schema, as: NebulaSchema
  alias Sql.Schema, as: CoreSchema
  alias Sql.Repo, as: CoreRepo
  alias Stellar.XDR.Types, as: StellarTypes

  def ingest_single(ledger_seq_no \\ 10327329) do
    ledger_header = CoreSchema.LedgerHeader
    |> CoreRepo.get_by(ledger_seq: ledger_seq_no)
    |> IO.inspect(label: :ledger_header)

    ledger_header_binary = ledger_header.data
      |> Base.decode64!()
      |> IO.inspect(label: :lh_data_base64)

    ledger_header_data =
      ledger_header_binary
      |> StellarTypes.Ledger.LedgerHeader.decode()
      |> IO.inspect(label: :lh_data_decoded)
  end
end
