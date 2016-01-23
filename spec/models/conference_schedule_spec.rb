require "rails_helper"

describe ConferenceSchedule do
  describe "#name" do
    subject(:schedule) { ConferenceSchedule.new(conference) }
    let(:conference) { create :conference }

    its(:name) { should eq conference.name }
  end

  describe "#presentations_by_time_slot" do
    subject(:schedule) { ConferenceSchedule.new(conference) }
    let(:conference) { create :conference }

    context "with presentations" do
      subject(:ordered_presentations) { schedule.presentations_by_time_slot }
      let(:first_time_slot) { Time.now - 30.minutes }
      let(:second_time_slot) { Time.now - 15.minutes }

      before do
        2.times do
          create(:presentation, conference: conference, starts_at: first_time_slot)
          create(:presentation, conference: conference, starts_at: second_time_slot)
        end
      end

      it "groups the presentations" do
        expect(ordered_presentations.size).to eq 2
      end

      it "orders presentations" do
        expect(ordered_presentations.keys).to eq [first_time_slot, second_time_slot]
      end

      it "combines all presentations in same time slot together" do
        expect(ordered_presentations[first_time_slot].size).to eq 2
      end
    end

    context "no presentations" do
      its(:presentations_by_time_slot) { should be_empty }
    end
  end
end
