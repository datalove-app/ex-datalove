use Mix.Config

case Mix.env() do
  env when env in [:dev, :test] ->
    import_config("dev.exs")

  _ ->
    import_config("prod.exs")
end
