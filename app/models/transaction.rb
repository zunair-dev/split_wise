class Transaction < ApplicationRecord
  CURRENCY = %w[PK USD INR]

  validates_presence_of :amount
  
  before_action :validate_transaction

  enum status: {
    in_progress: 0
    failed:      1
    completed:   2
  }

  private

  def validate_transaction
  end
end
