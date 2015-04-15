json.array!(@projects) do |project|
  json.extract! project, :id, :name, :subtitle, :description, :category, :image
  json.url project_url(project, format: :json)
end
