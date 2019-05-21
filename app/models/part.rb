class Part < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :user_id, presence: true
  validattes :name, presence: true
  validattes :price, presence: true
end
