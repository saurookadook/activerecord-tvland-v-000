class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(hash)
    self.network.call_letters = hash.values.key
  end
end
