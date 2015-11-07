class TimeRange < ActiveRecord::Base
  belongs_to :availability, polymorphic: true

  validates :initial_time, presence: true
  validates :end_time, presence: true
  validate :valid_date_range

  private

  def valid_date_range
    return if [initial_time.blank?, end_time.blank?].any?
    if initial_time > end_time
      errors.add(:initial_time, "'initial_time' date must be before or equal 'end_time' date")
    end
  end
end
