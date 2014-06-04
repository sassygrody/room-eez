class User < ActiveRecord::Base
  def name
    self.first_name
  end
end
