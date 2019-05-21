class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :part

  validates :user_id, presence: true
  validates_uniqueness_of :user_id, scope: :part_id
end
