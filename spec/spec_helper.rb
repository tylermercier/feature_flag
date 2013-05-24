require 'coveralls'
Coveralls.wear!

SPEC_ROOT = Pathname(__FILE__).dirname.expand_path
require SPEC_ROOT.parent + 'lib/feature_flag'
