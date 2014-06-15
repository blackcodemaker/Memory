require "spec_helper"

describe User, :type => :model do
  describe "associations" do
    it { should have_one(:user_settings) }
  end

	describe "validations" do
    it { should validate_presence_of :email }
		it { should validate_presence_of :password }
		it { should validate_confirmation_of :password }
	end

  describe "#full_name" do
    let(:first_name) { "James" }
    let(:last_name) { "Dean" }

    subject do
      build(
        :user,
        first_name: first_name,
        last_name: last_name
      )
    end

    it "combines first and last names" do
      expect(subject.full_name).to eq "James Dean"
    end
  end
end
