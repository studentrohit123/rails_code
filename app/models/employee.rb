class Employee < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :personal_email, presence: true, uniqueness: true

  def name
    "#{first_name} #{last_name}".strip
  end

  def full_address
    "#{address_line_1}, #{city}, #{state}, #{country}, #{pincode}".strip
  end
end


