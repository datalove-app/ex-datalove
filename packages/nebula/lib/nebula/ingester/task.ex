defmodule Nebula.Stellar.Ingester.Task do
  @moduledoc """
  """

  alias Nebula.Stellar.Ingester.Task.Context

  def run(%Context{} = ctx, tasks \\ []) do
    # ctx =
    #   Enum.reduce(tasks, ctx, fn newCtx, task ->
    #     task(newCtx)
    #   end)
  end
end
