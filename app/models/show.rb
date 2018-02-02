class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(netw_hash)
    network = Network.create(netw_hash)
    self.network_id
  end
end
