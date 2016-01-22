class Presentation < ActiveRecord::Base
  belongs_to :conference
  belongs_to :presenter

  validates :title, presence: true
  validates :description, presence: true
end
