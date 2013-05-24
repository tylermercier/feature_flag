require 'spec_helper'

describe FeatureFlag do

  context 'feature flag enabled' do
    before :each do
      ENV["FEATURE"] = "true"
    end

    it { FeatureFlag::FEATURE.should be_true }
  end

  context 'feature flag disabled' do
    before :each do
      ENV["FEATURE"] = "false"
    end

    it { FeatureFlag::FEATURE.should be_false }
  end
end
