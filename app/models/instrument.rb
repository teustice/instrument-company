class Instrument < ApplicationRecord
  has_many :reviews
  validates :brand, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
