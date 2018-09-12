require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/vendor'
class VendorTest < Minitest::Test
  def test_vendor_exists
  vendor = Vendor.new("Rocky Mountain Fresh")
  assert_instance_of Vendor, vendor
  end
end
