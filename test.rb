fruits = ['apple', 'banana', 'lemon']

fruits << "orange"

fruits = {"apple" => 100, "banana" => 60, "lemon" => 150}
fruits2 = {apple: 10, banana:6, lemon: 15}

fruits2[:orange] = 9999
p fruits2

fruits2[:orange] = 9
p fruits2

fruits2.delete(:banana)
p fruits2

p 1000 + 2000 
p 3000 - 1500
p 50 * 40
p 600 / 15
p 5 % 2

num = 1 
p num

num += 1
p num

num -= 1
p num



p 'Hello' + "World"

# 1は20より小さいか？
p 1 < 20


p 5 <= 5


p 1 > 20


p 5 >= 5


p 2 * 5 == 10


p 10 == 20

num = 1

if num == 0
  puts "zero"
elsif num == 1
  puts "one"
end


num = 1
case num
when 0
  p "zero"  
when 1
  p "one"
when 2,3,4,5,6,7
  p "prime"  
else
  p "unknown"
end


arr = ["hoge", "hoge", "hoge"]

while arr.size < 3
  arr << "hoge"
end

p arr


5.times do
  p "OK"
end


numbers = [1,2,3,4,5]

numbers.each do |num|
    p num
end


def say_hello
  p "Hello World"
end

say_hello


def say_name(name)
  p "名前は" + name + 'です'
end

say_name("太郎")

p "年齢を入力してください"
age = gets.to_i

p "年齢は#{age}歳です。来年は#{age + 1}歳です 