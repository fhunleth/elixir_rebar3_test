defmodule Rebar3Test.MixProject do
  use Mix.Project

  def project do
    [
      app: :rebar3_test,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      # Set build_embedded to false to fix the issue
      build_embedded: true,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:plug_cowboy, "~> 2.0"},
      # Commenting in the following line in to downgrade cowboy also fixes the issue
      # {:cowboy, "2.8.0"}
    ]
  end
end
