class Event < ActiveRecord::Base
  has_many :time_ranges, as: :availability
  has_many :assistants

  validates :name, presence: true
  validates_associated :time_range
end
