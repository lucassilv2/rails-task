json.extract! tarefa, :id, :titulo, :descricao, :categoria, :data_vencimento, :created_at, :updated_at
json.url tarefa_url(tarefa, format: :json)
