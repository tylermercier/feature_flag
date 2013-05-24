require 'spec_helper'

describe Lookup do
  context '#check_flag' do
    it 'should return true when ENV variable enabled' do
      ENV["FEATURE"] = "true"
      Lookup.check_flag('FEATURE').should be_true
    end

    it 'should return false when no ENV variable found' do
      Lookup.check_flag('xxMISINGxx').should be_false
    end

    it 'should return false when ENV variable empty' do
      ENV["FEATURE"] = ""
      Lookup.check_flag('FEATURE').should be_false
    end

    it 'should return false when ENV variable nil' do
      ENV["FEATURE"] = nil
      Lookup.check_flag('FEATURE').should be_false
    end
  end

  context '#enabled' do
    it 'should match true values' do
      %w(true t yes y enabled 1).each do |value|
        Lookup.enabled(value).should == true
      end
    end

    it 'should not have false positive matches to non-true values' do
      %w(untrue not eyes silly unenabled 101).each do |value|
        Lookup.enabled(value).should == false
      end
    end

    it 'should match false values' do
      %w(false f no n disabled 0).each do |value|
        Lookup.enabled(value).should == false
      end
    end
  end
end
