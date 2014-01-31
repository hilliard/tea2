json.array!(@tcsubsystems) do |tcsubsystem|
  json.extract! tcsubsystem, :id, :tcsubsystemname
  json.url tcsubsystem_url(tcsubsystem, format: :json)
end
