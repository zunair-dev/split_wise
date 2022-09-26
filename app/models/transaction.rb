class Transaction < ApplicationRecord
  validates_presence_of :amount

  enum status: {
    in_progress: 0
    failed:      1
    completed:   2
  }
end
