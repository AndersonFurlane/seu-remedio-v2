require 'spec_helper'

describe Remedy do
  before(:all) do
    @remedy = create(:remedy)
  end

  subject { @remedy }

  context :name do
    its(:name) { should be_present }
    its(:name) { should_not be_blank}
    it { build(:remedy, name: @remedy.name).should_not be_valid }
  end

  context :reminders do
    it { @remedy.should respond_to(:reminders) }
  end
end