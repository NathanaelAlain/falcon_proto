class Trade < ApplicationRecord
  belongs_to :user
  belongs_to :part

  validates :user_id, presence: true
end
