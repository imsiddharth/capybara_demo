require File.dirname(__FILE__) + "/driver/launch_driver"
include CreateDriver

require File.dirname(__FILE__) + "/utility/common_utility.rb"
include Utility
#include CommonUtility

require 'capybara'

require 'yaml'
require 'cucumber'


#
#require File.dirname(__FILE__) + "/pages/google_home_page"
