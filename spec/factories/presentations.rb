FactoryGirl.define do
  factory :presentation do
    title "Keynote"
    description "A fascinating look at the past, present, and future of our world."
    starts_at Time.now
    ends_at Time.now + 30.minutes
    conference
  end
end
