defmodule Nebula.Stellar.Ingester.Task.Context.Cursor do
  @moduledoc """
  """

  defstruct [:ledger_hash, :transaction_hash, :operation_id]
end

defmodule Nebula.Stellar.Ingester.Task.Context.IngestBundle do
  @moduledoc """
  """

  defstruct [:ledger_header, transactions: [], transaction_fees: []]
end

defmodule Nebula.Stellar.Ingester.Task.Context do
  @moduledoc """
  """

  defstruct StellarRepo: Nebula.Stellar.Sql.Repo,
            DgraphRepo: Nebula.Stellar.Dgraph.Repo,

            # holds the initial data retrieved from stellar-core
            ingest_bundle: %__MODULE__.IngestBundle{},

            # maintains the current position in the task
            current: %__MODULE__.Cursor{},

            # maps account addresses to Dgraph UIDs
            # maps asset issuer + code to Dgraph UIDs
            account_uids: %{},
            asset_uids: %{},

            # Dgraph changesets that will be eventually committed
            changesets: %{},
            # `
            transaction: nil
end
