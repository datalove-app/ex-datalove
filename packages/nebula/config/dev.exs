use Mix.Config

docker_host_ip =
  case System.get_env("DOCKER_HOST") do
    nil ->
      raise "Missing required DOCKER_HOST environment variable"

    host ->
      host
  end
  |> String.split("tcp://", trim: true)
  |> Enum.at(0)
  |> String.split(":")
  |> Enum.at(0)

pg_user = "stellar"

pg_pass =
  case System.cmd("pgpass.sh", []) do
    {str, 0} when is_bitstring(str) and str != "" ->
      str

    _ ->
      raise "Missing required postgresql password"
  end
  |> String.split(":")
  |> List.last()
  |> String.trim()

config :nebula,
  ecto_repos: [Nebula.Stellar.Sql.Repo]

config :nebula, Nebula.Stellar.Sql.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "core",
  username: pg_user,
  password: pg_pass,
  hostname: docker_host_ip,
  port: 5432

config :nebula, DgraphEx,
  adapter: DgraphEx.Client.Adapters.HTTP,
  endpoint: "http://#{docker_host_ip}:8080"
