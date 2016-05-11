defmodule InflectionsEs.Mixfile do
  use Mix.Project

  def project do
    [app: :inflections_es,
     version: "0.0.1",
     elixir: "~> 1.2",
     description: description,
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [mod: {InflectionsEs, []},
    applications: [:inflections, :inflector, :logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:inflector, "~> 0.0.11"},
    {:inflections, "~> 0.0.1"}]
  end

  defp description do
   """
   inflector spanish rules
   """
 end

  defp package do
    [# These are the default files included in the package
      name: :inflections_es,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Nathan Faucett"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/nathanfaucett/ex-inflections_es",
        "Docs" => "https://github.com/nathanfaucett/ex-inflections_es"
      }
    ]
  end
end
