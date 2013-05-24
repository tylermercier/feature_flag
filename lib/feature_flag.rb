require "feature_flag/version"

module FeatureFlag

  def duck?
    check_flag "FF_DUCKS"
  end

  private
    def check_flag(key)
      return false if ENV[key].nil? || ENV[key].blank?
      return false if ENV[key] == false || ENV[key] =~ (/(false|f|no|n|0)$/i)
      return true if ENV[key] == true || ENV[key] =~ (/(true|t|yes|y|1)$/i)

      raise ArgumentError.new("invalid value for flag: #{key}")
    end
end
