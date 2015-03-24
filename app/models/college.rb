class College < ActiveRecord::Base
  def confirm
    unless
      self.confirmed = true
    end
  end
end
