class Part < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :user_id, presence: true
  validates :name, presence: true
  validates :price, presence: true
end
