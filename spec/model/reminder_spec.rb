require 'spec_helper'

describe Reminder do
  before(:all) do
    @reminder = create(:reminder, dependent_email: '', dependent_name: '')
  end

  subject { @reminder }

  its(:title) { should be_present }
  its(:title) { should_not be_blank }

  its(:remedy) { should be_present }
  its(:remedy) { should_not be_blank }
  it { @reminder.should respond_to(:remedy) }

  its(:user) { should be_present }
  its(:user) { should_not be_blank }
  it { @reminder.should respond_to(:user) }

  its(:start_at) { should be_present }
  its(:start_at) { should_not be_blank }

  its(:end_at) { should be_present }
  its(:end_at) { should_not be_blank }

  its(:range_days) { should be_present }
  its(:range_days) { should_not be_blank }

  its(:dependent_email) { should be_blank }
  its(:dependent_name) { should be_blank }

  context 'forever remendy true' do
    before(:all) do
      @forever_remedy = create(:reminder, forever_remedy: true, start_at: nil, end_at: nil, range_days: nil)
    end

    subject { @forever_remedy }

    context :start_at do
      its(:start_at) { should be_blank }
    end

     context :end_at do
      its(:end_at) { should be_blank }
    end

    context :range_days do
      its(:range_days) { should be_blank }
    end
  end

  context 'dependent true' do
    before(:all) do
      @dependent = create(:reminder, dependent: true)
    end

    subject { @dependent }

    its(:dependent_email) { should be_present }
    its(:dependent_email) { should_not be_blank }
    its(:dependent_name) { should be_present }
    its(:dependent_name) { should_not be_blank }
  end
end