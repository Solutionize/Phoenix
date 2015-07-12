class AccountEntry < ActiveRecord::Base
  belongs_to :account_txn, inverse_of: :entries, touch: true
  belongs_to :account, inverse_of: :entries

  validates :account, presence: true
  validates :type, presence: true
  validates :amount, presence: true, numericality: { less_than_or_equal_to: 99999999 }
end
