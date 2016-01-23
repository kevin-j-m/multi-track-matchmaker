def presentations
  [
    {
      first_name: "David",
      last_name: "Heinemeier Hansson",
      presentations_attributes: [{
        conference_id: @rails_conf_2015.id,
        title: "Rails 5",
        description: "ActionCable! Turbolinks! Monoliths for days!",
        starts_at: Time.new(2015, 4, 21, 9, 30, 0),
        ends_at: Time.new(2015, 4, 21, 10, 40, 0)
      }]
    },
    {
      first_name: "Godfrey",
      last_name: "Chan",
      presentations_attributes: [{
        conference_id: @rails_conf_2015.id,
        title: "Prying Open The Black Box",
        description: "Every once a while, Rails might behave in strange ways that you did not expect, and it could be difficult to figure out what is really going on. Was it a bug in the framework? Could it be one of the gems I am using? Did I do something wrong?

In this session, we will look at some tips, tricks and tools to help you debug your Rails issues. Along the way, you will also learn how to dive into the Rails codebase without getting lost. The next time you a mysterious bug finds its way into your Rails applications, you will be well-equipped to pry open the black box yourself!",
        starts_at: Time.new(2015, 4, 21, 11, 0, 0),
        ends_at: Time.new(2015, 4, 21, 11, 40, 0)
      }]
    },
    {
      first_name: "André",
      last_name: "Arko",
      presentations_attributes: [{
        conference_id: @rails_conf_2015.id,
        title: "How Does Bundler Work, Anyway?",
        description: "We all run bundle install so we can use some gem or other, sometimes several times a day. But what does it do, exactly? How does Bundler allow your code to use those gems? Why do we have to use bundle exec? What's the point of checking in the Gemfile.lock? Why can't we just gem install the gems we need? Join us for a walk through the reasons that Bundler exists, and a guide to what actually happens when you use it. Finally, we'll cover some Bundler \"pro tips\" that can improve your workflow when developing on multiple applications at once.",
        starts_at: Time.new(2015, 4, 21, 11, 0, 0),
        ends_at: Time.new(2015, 4, 21, 11, 40, 0)
      }]
    },
    {
      first_name: "John",
      last_name: "Duff",
      presentations_attributes: [{
        conference_id: @rails_conf_2015.id,
        title: "Riding Rails for 10 Years",
        description: "Over 10 years ago the first line of code was written for what would become Shopify. Within this codebase we can see the evolution of Rails from the early 0.13.1 days to where we are today, on Rails 4.1. Through the history of this git repo we can revisit some of the significant changes to Rails over the years, and simultaneously observe what has withstood the test of time. By looking at the challenges that we have overcome while building and using Rails, we can inform future decisions so that we can continue to build a framework, and applications, that last years to come.",
        starts_at: Time.new(2015, 4, 21, 11, 50, 0),
        ends_at: Time.new(2015, 4, 21, 12, 30, 0)
      }]
    },
    {
      first_name: "Richard",
      last_name: "Schneeman",
      presentations_attributes: [{
        conference_id: @rails_conf_2015.id,
        title: "Speed Science",
        description: "Run your app faster, with less RAM and a quicker boot time today. How? With science! In this talk we'll focus on the process of turning performance problems into reproducible bugs we can understand and squash. We'll look at real world use cases where small changes resulted in huge real world performance gains. You'll walk away with concrete and actionable advice to improve the speed of your app, and with the tools to equip your app for a lifetime of speed. Live life in the fast lane, with science!",
        starts_at: Time.new(2015, 4, 21, 11, 50, 0),
        ends_at: Time.new(2015, 4, 21, 12, 30, 0)
      }]
    },
    {
      first_name: "Aja",
      last_name: "Hammerly",
      presentations_attributes: [{
        conference_id: @rails_conf_2015.id,
        title: "DevOps for The Lazy",
        description: "Like most programmers I am lazy. I don't want to do something by hand if I can automate it. I also think DevOps can be dreadfully dull. Luckily there are now tools that support lazy DevOps. I'll demonstrate how using Docker containers and Kubernetes allows you to be lazy and get back to building cool features (or watching cat videos). I'll go over some of the pros and cons to the \"lazy\" way and I'll show how these tools can be used by both simple and complex apps.",
        starts_at: Time.new(2015, 4, 21, 13, 50, 0),
        ends_at: Time.new(2015, 4, 21, 14, 30, 0)
      }]
    },
    {
      first_name: "Katherine",
      last_name: "Wu",
      presentations_attributes: [{
        conference_id: @rails_conf_2015.id,
        title: "Slightly Less Painful Time Zones",
        description: "For developers, there are two things that are certain for time zones: you can’t avoid having to deal with them, and you will screw them up at some point. There are, however, some ways to mitigate the pain. This talk will discuss tactics for avoiding time zone mayhem, using a feature to send out weekly email reports in a customer’s local time zone as a case study. It will cover idiosyncrasies of how time zones are handled in Ruby and Rails, how to write tests to avoid false positives, and advice on how to release time zone-related code changes more safely.",
        starts_at: Time.new(2015, 4, 21, 9, 30, 0),
        ends_at: Time.new(2015, 4, 21, 10, 40, 0)
      }]
    }
  ]
end

def create_presentation(params)
  Presenter.create(params)
end

if Rails.env.development?
  @rails_conf_2015 = Conference.create(
    name: "RailsConf 2015",
    starts_on: Date.parse("2015-04-21"),
    ends_on: Date.parse("2015-04-23"))

  presentations.each { |p| create_presentation(p) }
end
