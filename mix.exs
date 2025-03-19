defmodule DevNull.MixProject do
  use Mix.Project

  def project do
    [
      app: :dev_null,
      version: "0.1.0",
      elixir: "~> 1.18.3",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {DevNull.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.0"}
    ]
  end
end
