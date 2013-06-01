class Sample < ActiveRecord::Base
  attr_accessible :sensor_id, :value

  def parsed
  	self.split(':')
  end

end
