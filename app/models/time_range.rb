class TimeRange < ActiveRecord::Base
  belongs_to :availability, polymorphic: true
end
