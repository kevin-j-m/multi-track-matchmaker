class ConferenceSchedule
  def initialize(conference)
    @conference = conference
  end

  def name
    conference.name
  end

  def presentations_by_time_slot
    grouped_presentations.sort.to_h
  end

  private

  def presentations
    conference.presentations
  end

  def grouped_presentations
    presentations.group_by(&:starts_at)
  end

  attr_reader :conference
end
