class Item < ApplicationRecord
  has_many :carts, through: :joint_items_carts
  validates :title,
    presence: { message: "Le titre est obligatoire" }
  validates :description,
    presence: { message: "La description est obligatoire" }
  validates :price,
    presence: { message: "le prix est obligatoire" },
    numericality: { greater_than: 0, message: "Le prix doit-être supérieur à 0 euros" }
  validates :image_url,
    presence: { message: 'Lien de l\'image obligatoire' }
end
