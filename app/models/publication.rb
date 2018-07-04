class Publication
  include Mongoid::Document
  include Mongoid::Timestamps

  field :titulo, type: String
  field :descripcion, type: String
  field :costo, type: Float
  field :placa, type: String
  field :modelo, type: String
  field :marca, type: String
  field :year, type: String
  field :tipo, type: String
  validates_presence_of :attribute, :on => :create, :message => "Faltan Datos"
  embedded_in :user
end
