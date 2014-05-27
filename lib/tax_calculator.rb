require "./lib/exempt_items.rb"

class TaxCalculator
  SALES_TAX = 0.10
  IMPORT_TAX = 0.05
  attr_reader :item

  def initialize(purchased_item)
    @item, price = purchased_item.split(" at ")
    @price = price.to_f
  end

  def price_with_tax
    (price + sales_tax + import_tax)
  end

  def sales_tax
    if exempted_item?(item)
      0
    else
      (price * SALES_TAX)
    end
  end

  def import_tax
    if imported_item?(item)
      (price * IMPORT_TAX)
    else
      0
    end
  end

  private
  attr_reader :price

  def exempted_item?(item)
    EXEMPT_ITEMS.any? { |exemption| item.include?(exemption) }
  end

  def imported_item?(item)
    item.include?("imported")
  end
end
