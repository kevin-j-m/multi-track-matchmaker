FactoryGirl.define do
  factory :conference do
    name "RailsConf 2015"
    starts_on Date.parse("2015-04-21")
    ends_on Date.parse("2015-04-23")
  end
end
