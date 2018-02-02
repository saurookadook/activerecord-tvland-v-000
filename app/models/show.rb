class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(netw_hash)
    self.network.create(netw_hash)
  end
end
