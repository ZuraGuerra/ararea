ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Ararea.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Ararea.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Ararea.Repo)

