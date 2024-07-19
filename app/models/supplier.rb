class Supplier < ApplicationRecord
  has_one :account
  has_one :account_histo, through: :account
end
