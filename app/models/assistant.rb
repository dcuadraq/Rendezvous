class Assistant < ActiveRecord::Base
  has_many :time_ranges, as: :availability
  has_one :event

  validates :name, presence: true,
                   allow_blank: false
end
