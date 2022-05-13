class Taiyaki

  #合計金額のためのクラス変数を定義
  @@totalprice = 0
  #購入さえた合計個数のためのクラス変数を定義
  @@taitotal = 0

  def initialize(taste, price)
    #味のインスタンス変数の定義
    @taste = taste
    #金額のインスタンス変数の定義
    @price = price
    #合計の個数を増やす
    @@taitotal += 1 
    #合計金額を計算する
    @@totalprice = @@totalprice + @price
  end

  def show_info
      puts "#{@taste}味のたい焼きは#{@price}円です。"
  end

  # クラスメソッドの定義
  def self.taiyakitotal
    puts "購入したたい焼きは全部で#{@@taitotal}です。" #ここに合計個数を表示させる
    puts "合計金額は#{@@totalprice}円です。"#ここに合計金額を表示させる
  end

end

while true
  puts "購入したいたい焼きはどれですか？"
  puts "あんこ　    150円 [1]"
  puts "チョコ　    170円 [2]"
  puts "カスタード  190円 [3]"

  choice_taiyaki = gets.to_i

  case choice_taiyaki
  when 1
    taiyaki = Taiyaki.new("あんこ", 150) #あんこ味のインスタンス化
    taiyaki.show_info #購入した商品の詳細を出すインスタンス変数の呼ぼ出し
  when 2
    taiyaki = Taiyaki.new("チョコ", 170) #チョコ味のインスタンス化
    taiyaki.show_info #購入した商品の詳細を出すインスタンス変数の呼ぼ出し
  when 3
    taiyaki = Taiyaki.new("カスタード", 190) #カスタード味のインスタンス化
    taiyaki.show_info #購入した商品の詳細を出すインスタンス変数の呼ぼ出し
  else
    puts "正しい数字を入力してください"
  end

  puts "購入を続けますか？"
  puts "まだ買う [1]"
  puts "もういらない [2]"

  continue_taiyaki = gets.to_i
  if continue_taiyaki == 2
    Taiyaki.taiyakitotal #合計個数と合計金額を表示するためのクラスメソッドを呼び出す
    break
  end
end