json.array!(@projects) do |project|
  json.extract! project, :id, :store, :code, :start, :time, :finish, :time
  json.url project_url(project, format: :json)
end
