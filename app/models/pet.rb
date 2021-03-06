class Pet < ApplicationRecord
  belongs_to :category
  belongs_to :user, counter_cache: true

  has_one_attached :pet_thumbnail, dependent: :destroy
  has_many_attached :pet_images, dependent: :destroy

  validates :name, presence: true
end
