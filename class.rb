class Taiyaki
  
  def initialize(taste,price)
  @taste = taste
  @price = price
  end

  def show_taiyaki
    puts puts "#{@taste}味のたいやきは#{@price}円です"
  end

end

taiyaki = Taiyaki.new("カスタード", 170)


taiyaki.show_taiyaki
