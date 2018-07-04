class User
  include Mongoid::Document
  field :nombres, type: String
  field :apellidos, type: String
  field :telefono, type: String
  field :correo, type: String
  field :usuario, type: String
  field :contrasena, type: String
  embeds_many :publications, store_as: "publicaciones"

  accepts_nested_attributes_for :publications
end
