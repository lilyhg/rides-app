class Ride < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"

  validates :title, :date, :duration, presence: true
end
