require 'spec_helper'

describe FeatureFlag do

  before :each do
    ENV["FF_TRUE"] = "true"
    ENV["FF_FALSE"] = "false"
  end

  context 'feature flag exists and is true' do
    it { FeatureFlag::FF_TRUE.should be_true }
  end

  context 'feature flag exists and is false' do
    it { FeatureFlag::FF_FALSE.should be_false }
  end

  context 'feature flag does not exist exist' do
    it { FeatureFlag::FF_DUCKS.should be_false }
  end
end
