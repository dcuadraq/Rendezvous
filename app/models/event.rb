class Event < ActiveRecord::Base
  has_many :time_ranges, as: :availability
  has_many :assistants

  validates :name, presence: true

  def earliest_possible_assistant
    earliest_time = nil
    assistants.each do |assistant|
      earliest_time = assistant.earliest_availability if assistant.earliest_availability < earliest_time
    end
    earliest_time
  end

  def latest_possible_assistant
    latest_time = nil
    assistants.each do |assistant|
      latest_time = assistant.latest_availability if assistant.latest_availability < latest_time
    end
    latest_time
  end

  def initial_times_for_assistants
    assistants.map(&:initial_times)
  end
end
