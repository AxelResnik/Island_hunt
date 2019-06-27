class Booking < ApplicationRecord
  belongs_to :island
  belongs_to :user
  belongs_to :transport, optional: true
  validates_presence_of :start_date, :end_date
  # validate :end_date_is_after_start_date
end
