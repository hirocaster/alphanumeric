defmodule Alphanumeric.Mixfile do
  use Mix.Project

  def project do
    [app: :alphanumeric,
     version: "0.1.1",
     elixir: "~> 1.3",
     description: "Convert 62 decimal number tools. Integer to String and String to Integer.",
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
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
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      name: :alphanumeric,
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["hirocaster"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/hirocaster/alphanumeric"}
    ]
  end
end
