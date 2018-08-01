defmodule Nebula.Mixfile do
  use Mix.Project

  @name         :nebula
  @version      "0.0.1-dev"
  @description  """
  """
  @github       "https://github.com/datalove-network/ex-datalove/blob/master/packages/nebula"
  @files        ["lib", "mix.exs", "mix.lock", "README.md"]
  @maintainers  ["Sunny G"]
  @licenses     ["MIT"]

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env == :prod

    [ app:              @name,
      version:          @version,
      description:      @description,
      elixir:           "~> 1.7",
      docs:             docs(),
      package:          package(),
      deps:             deps() ++ dev_deps(),
      build_embedded:   in_production,
      start_permanent:  in_production,
    ]
  end

  def application do
      # built-in apps that need starting
    [ extra_applications: [
        :logger,
      ],
      env: env(),
      # Entry point module and parameters
      mod: {Nebula, []},
    ]
  end

  def env() do
    [
    ]
  end

  defp deps() do
    [ {:ecto,       "~> 2.1"},
      # {:dgraph_ex,  github: "sunny-g/dgraph_ex"},
      {:dgraph_ex,  git: "https://github.com/sunny-g/dgraph_ex", branch: "refactor/push-to-v1"},
      {:httpoison,  "~> 0.12", override: true},
      {:ok,         github: "sunny-g/ok", override: true},
      {:postgrex,   "~> 0.11"},
      {:stellar,    "~> 0.2.0"},
    ]
  end

  defp dev_deps() do
    [ {:credo,          "~> 0.9",   only: [:dev, :test], runtime: false},
      {:ex_doc,         "~> 0.18",  only: [:dev, :test], runtime: false},
      {:mix_test_watch, "~> 0.6",   only: [:dev, :test], runtime: false},
    ]
  end

  defp package do
    [ name:        @name,
      files:       @files,
      maintainers: @maintainers,
      licenses:    @licenses,
      links:       %{
        "GitHub" => @github,
      },
    ]
  end

  defp docs do
    [ main:       "readme",
      source_url: @github,
      extras:     ["README.md"],
    ]
  end
end
