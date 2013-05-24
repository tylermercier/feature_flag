require "feature_flag/version"
require "feature_flag/lookup"

module FeatureFlag
  def self.const_missing(name)
    Lookup.check_flag name.to_s
  end
end
