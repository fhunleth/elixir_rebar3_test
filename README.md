# Rebar3Test

To reproduce:

```
# Be sure that you're using Elixir 1.12.0-rc.1
$ mix local.rebar
$ mix deps.get
$ mix compile
$ ls _build/dev/lib/cowlib/ebin
cowlib.app
```

To fix:

Edit `mix.exs` and comment out `build_embedded: true`. Then run `mix
deps.compile` and look at the `cowlib/ebin` directory.

