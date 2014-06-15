require "spec_helper"

describe UserDecorator do
  describe "#pretty_spaced_time_interval" do
    shared_examples "it gives the human-readable time" do
      it "should return a human-readable time" do
        expect(subject.pretty_spaced_time_interval).
          to eq expected_interval
      end
    end

    let(:user) do
      create(:user, user_settings: user_settings)
    end

    subject { user.decorate }

    context "interval is less than an hour" do
      let(:user_settings) do
        create(:user_settings, :with_30_min_spaced_time_interval)
      end

      let(:expected_interval) do
        "30 minutes"
      end

      it_behaves_like "it gives the human-readable time"
    end

    context "interval is an hour" do
      let(:user_settings) do
        create(:user_settings, :with_1_hr_spaced_time_interval)
      end

      let(:expected_interval) do
        "1 hour"
      end

      it_behaves_like "it gives the human-readable time"
    end

    context "interval is multiple hours" do
      let(:user_settings) do
        create(
          :user_settings,
          spaced_time_interval_minutes: 120
        )
      end

      let(:expected_interval) do
        "2 hours"
      end

      it_behaves_like "it gives the human-readable time"
    end

    context "interval is hours and minutes" do
      let(:user_settings) do
        create(
          :user_settings,
          spaced_time_interval_minutes: 150
        )
      end

      let(:expected_interval) do
        "2 hours, 30 minutes"
      end

      it_behaves_like "it gives the human-readable time"
    end
  end
end

