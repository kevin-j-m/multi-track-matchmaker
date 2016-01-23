class Presenter < ActiveRecord::Base
  has_many :presentations

  accepts_nested_attributes_for :presentations

  def full_name
    "#{first_name} #{last_name}"
  end
end
