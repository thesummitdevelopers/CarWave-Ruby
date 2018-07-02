json.extract! user, :id, :nombres, :apellidos, :telefono, :correo, :usuario, :contrasena, :created_at, :updated_at
json.url user_url(user, format: :json)
