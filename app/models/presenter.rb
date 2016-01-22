class Presenter < ActiveRecord::Base
  has_many :presentations

  def full_name
    "#{first_name} #{last_name}"
  end
end
