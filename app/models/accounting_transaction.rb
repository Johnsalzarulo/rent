class AccountingTransaction < ActiveRecord::Base
  belongs_to :property


  scope :income, -> { where category: 'income' }
  scope :expense, -> { where category: 'expense' }
  scope :pending, -> { where category: 'pending' }
end
