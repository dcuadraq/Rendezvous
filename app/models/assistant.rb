class Assistant < ActiveRecord::Base
  has_many :time_ranges, as: :availability
  has_one :event

  validates :name, presence: true,
                   allow_blank: false

  def earliest_availability
    earliest_time = nil
    time_ranges.each do |time_range|
      earliest_time = time_range.initial_time if time_range.initial_time < earliest_time
    end
    earliest_time
  end

  def latest_availability
    latest_availability = nil
    time_ranges.each do |time_range|
      latest_availability = time_range.end_time if time_range.end_time < latest_availability
    end
    latest_availability
  end

  def initial_times
    range_times.map(&:initial_time)
  end
end
