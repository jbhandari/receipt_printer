class Receipt

  def initialize(items)
    @items = items
  end

  def print
    @items.each do |item|
      puts item
    end
  end
end

shopping_list = ARGV.first
shopping_list = File.open(File.dirname(File.dirname(__FILE__)) + '/data/' + shopping_list)
items = shopping_list.read().split("\n")

list = Receipt.new(items)
list.print
