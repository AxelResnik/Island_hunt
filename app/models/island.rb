class Island < ApplicationRecord
  DIFFICULTY = %w[easy medium hard very/ hard]

  belongs_to :user
  has_many :reviews
  has_many :bookings

  validates :name, presence: true
  validates :location, presence: true
  validates :activities, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :difficulty, presence: true, inclusion: { in: DIFFICULTY }
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
