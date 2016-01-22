class Presentation < ActiveRecord::Base
  belongs_to :conference

  validates :title, presence: true
  validates :description, presence: true
end
