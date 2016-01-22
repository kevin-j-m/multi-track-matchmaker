class Conference < ActiveRecord::Base
  has_many :presentations

  validates :name, presence: true
end
