defmodule FlowCsvEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :flow_csv_ex,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {FlowCsvEx.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:flow, "~> 1.2"},
      {:csv, "~> 3.0"},
      {:faker, "~> 0.17"}
    ]
  end
end
