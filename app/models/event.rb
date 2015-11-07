class Event < ActiveRecord::Base
  has_many :time_ranges, as: :availability
  has_many :assistants

  validates :name, presence: true
  validates :password, confirmation: true, presence: true
  validates :password_confirmation, presence: true
end
