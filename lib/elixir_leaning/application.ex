defmodule ElixirLeaning.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: ElixirLeaning.Worker.start_link(arg)
      # {ElixirLeaning.Worker, arg}
      ElixirLeaning.Scheduler
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirLeaning.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
