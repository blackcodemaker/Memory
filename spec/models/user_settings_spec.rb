require "spec_helper"

describe UserSettings do
  describe "associations" do
    it { should belong_to(:user) }
  end

  describe "validations" do
    it { should validate_presence_of(:spaced_time_interval_minutes) }
  end

  describe "#spaced_time_interval" do
    shared_examples "it should equal the expected number of seconds" do
      it "should equal the expected number of seconds" do
        expect(subject.spaced_time_interval).
          to eq expected_seconds
      end
    end

    context "#spaced_time_interval_minutes is less than an hour" do
      subject do
        build(:user_settings, :with_30_min_spaced_time_interval)
      end
      let(:expected_seconds) { 1800 }

      it_behaves_like "it should equal the expected number of seconds"
    end

    context "#spaced_time_interval_minutes is more than an hour" do
      subject do
        build(
          :user_settings,
          spaced_time_interval_minutes: 120
        )
      end
      let(:expected_seconds) { 7200 }

      it_behaves_like "it should equal the expected number of seconds"
    end
  end
end
