class Event < ActiveRecord::Base
  has_many :time_ranges, as: :availability
  has_many :assistants

  validates :name, presence: true
  validates :password, confirmation: true, presence: true
  validates :password_confirmation, presence: true

  def initial_times_for_assistants
    assistants.map(&:initial_times).uniq
  end

  def assistants_time_ranges
    assistants_time_ranges = []
    assistants.each do |assistant|
      assistants_time_ranges.concat assistant.time_ranges
    end
    assistants_time_ranges
  end
end
