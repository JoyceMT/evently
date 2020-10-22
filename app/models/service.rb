class Service < ApplicationRecord
  LUGARES = ['Salón', 'Hacienda', 'Jardín', 'Playa', 'Hotel', 'Restaurante', 'Viñedo']
  COMIDA = ['Banquete', 'Pasteles', 'Mesa de Dulces', 'Food Truck', 'Barra Libre']
  FOTO = ['Fotografía', 'Video']
  ENTRETENIMIENTO = ['Música', 'Animación']
  DECORACION = ['Arreglos Florales', 'Decoración', 'Carpas', 'Sillas y Mesas']
  INVITACION = ['Invitaciones', 'Recuerdos']
  belongs_to :category
  belongs_to :provider
end
