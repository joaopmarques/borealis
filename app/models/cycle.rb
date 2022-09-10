class Cycle < ApplicationRecord
  validates :length, :time_unit, presence: true

  validates :time_unit, inclusion: { in: %w[days weeks months] }
end
