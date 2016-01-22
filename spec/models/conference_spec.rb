require "rails_helper"

describe Conference do
  it { should validate_presence_of :name }
end
