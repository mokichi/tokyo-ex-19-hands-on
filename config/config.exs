import Config

config :nx, :default_backend, EXLA.Backend
config :nx, :default_defn_options, [compiler: EXLA]
