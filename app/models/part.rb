class Part < ApplicationRecord

  belongs_to :user

  validates :user_id, presence: true
  validates :name, presence: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :global_search,
    against: [ :name, :description ],
    associated_against: {
      user: [ :first_name, :last_name, :address ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
