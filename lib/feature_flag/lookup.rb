class Lookup
  def self.check_flag(key)
    return false if ENV[key].nil? || ENV[key].empty?
    enabled(ENV[key])
  end

  def self.enabled(value)
    !!(value =~ /^(true|t|yes|y|enabled|1)$/i)
  end
end
