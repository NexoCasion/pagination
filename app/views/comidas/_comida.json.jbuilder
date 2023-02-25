json.extract! comida, :id, :nome, :desc, :price, :quantidade, :estragado, :compra, :vencimento, :created_at, :updated_at
json.url comida_url(comida, format: :json)
