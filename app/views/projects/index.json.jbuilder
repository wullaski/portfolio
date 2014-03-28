json.array!(@projects) do |project|
  json.extract! project, :id, :name, :date, :technology, :role, :description, :category_id, :link
  json.url project_url(project, format: :json)
end
