require 'spec_helper'

describe User do
  before(:all) do
    @user = create(:user)
  end

  subject { @user }

  it { @user.should respond_to(:reminders) }

  its(:name) { should be_present }
  its(:name) { should_not be_blank }

  its(:email) { should be_present }
  its(:email) { should_not be_blank }

  its(:password) { should be_present }
  its(:password) { should_not be_blank }
end