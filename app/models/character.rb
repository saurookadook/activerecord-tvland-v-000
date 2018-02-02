class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(show_hash)
    new_show = Show.create(show_hash)
    self.show.create(show_hash)
  end
end
