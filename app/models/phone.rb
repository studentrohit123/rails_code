class Phone < ApplicationRecord
  has_and_belongs_to_many :numbers
end
