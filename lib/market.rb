require 'pry'
class Market
    attr_reader :name,
              :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.map do |vendor|
      if vendor.inventory.include?(item)
        vendor
      end
    end.compact
  end

  def sorted_item_list
    get_inventory.map do |name, amount|
      name.map do |name, amount|
        name
      end
    end.flatten.uniq.sort
  end


  def total_inventory
    get_inventory.inject(Hash.new(0)) do |item, total_inventory|
      total_inventory.each do |total_amount, amount|    item[total_amount]
      item[total_amount] += amount
    end
     item
   end
  end

  def get_inventory
    @vendors.map do |vendor|
      vendor.inventory
    end
  end

end
