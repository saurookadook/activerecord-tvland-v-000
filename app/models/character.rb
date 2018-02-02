class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(show_hash)
    new_show = Show.find_by(show_hash)
    self.show_id = new_show.id
  end
end
