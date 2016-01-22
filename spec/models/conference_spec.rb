require "rails_helper"

describe Conference do
  it { should have_many :presentations }

  it { should validate_presence_of :name }
end
