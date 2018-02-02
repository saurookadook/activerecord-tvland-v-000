class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def self.full_name
    binding.pry
    "#{self.first_name} #{self.last_name}"
  end
end
