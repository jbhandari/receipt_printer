require './lib/tax_calculator.rb'

class Receipt
  def initialize(purchases)
    @purchases = purchases
  end

  def print
   puts 'Your Receipt:'
    print_purchases
    print_sales_tax
    print_total_cost
  end

  private
    attr_reader :purchases, :purchased_items

  def print_purchases
    purchased_items.each do |purchased|
      puts "#{purchased.item}: #{'%.2f' % purchased.price_with_tax}"
    end
  end

  def print_sales_tax
    puts "Sales Tax: #{'%.2f' % total_sales_tax}"
  end

  def print_total_cost
    puts "Total: #{'%.2f' % total_cost}"
  end

  def purchased_items
    @purchased_items ||= purchases.map { |item| TaxCalculator.new(item) }
  end

  def total_cost
    purchased_items.inject(0) do |sum, purchased_item|
      sum + purchased_item.price_with_tax
    end
  end

  def total_sales_tax
    purchased_items.inject(0) do |sum, purchased_item|
      sum + purchased_item.sales_tax + purchased_item.import_tax
    end
  end
end

purchases = ARGV.first
purchases = File.open(File.dirname(File.dirname(__FILE__)) + '/data/' + purchases)
purchases = purchases.read().split("\n")

receipt = Receipt.new(purchases)
receipt.print
