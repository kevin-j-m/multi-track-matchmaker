class ConferenceSchedule
  def initialize(conference)
    @conference = conference
  end

  def name
    conference.name
  end

  def presentations_by_time_slot
    time_slots = []

    grouped_presentations.each do |time, presentations|
      time_slots << TimeSlot.new(time, presentations)
    end

    time_slots.sort
  end

  private

  attr_reader :conference

  def presentations
    conference.presentations
  end

  def grouped_presentations
    presentations.includes(:presenter).group_by(&:starts_at)
  end
end

class TimeSlot
  include Comparable

  attr_reader :starts_at, :presentations

  def initialize(starts_at, presentations)
    @starts_at = starts_at
    @presentations = presentations
  end

  def <=>(another_slot)
    starts_at <=> another_slot.starts_at
  end
end
