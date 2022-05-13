# Q1
# p "数字を2回入力してください"

# num1 = gets.to_i
# num2 = gets.to_i
# total = num1 + num2

# puts "入力された値の合計は#{total}です！"

# Q2
# def profile(name,gender)
#   puts "#{name}さんは、#{gender}です。"
# end

# p "名前を入力してください"
# name = gets.chomp

# p "性別を入力してください"
# gender = gets.chomp

# profile(name,gender)

# Q3
# i = 1

# while i <= 100
#   puts i
#   i = i + 1

# end

# Q4
# students = ["田中","山田","佐藤"]

# students.each do |student|
#   puts "#{student}さん"
# end

# Q5
# class Student

#   def initialize(name,year)
#     @name = name
#     @school_year = year
#   end

#   def show_student
#     puts "#{@name}さんは、#{@school_year}生です"
#   end

# end

# puts "名前を入力してください"
# name = gets.chomp

# puts "学年を入力してください"
# year = gets.chomp

# students = Student.new(name,year)

# students.show_student

# Q6
# answer = rand(1..10)
# count = 1

# puts "簡単な数あてゲームです"
# puts "1~10までの値を入力してください"

# while true
#   int = gets.to_i
#   if 0 < int || int <= 10
#     if answer == int
#       puts "正解です！！！"
#       puts "正解まで#{count}回でした。"
#       break
#     elsif answer < int
#       puts "入力された値が大きいです。"
#       puts "もう一度入力してください。"
#       count += 1
#     elsif answer > int
#       puts "入力された値が小さいです。"
#       puts "もう一度入力してください。"
#       count += 1
#     end
#   else
#     puts "入力できるのは1~10までです。"
#     puts "もう一度入力してください。"
#   end
# end

# Q7
# mozi = "Hello!"
# def great(mozi)
#   puts mozi
# end

# great(mozi)

# Q8
scores = [30, 82, 94, 51, 77]
totalscore = 0
scores.each do |score|
  totalscore = totalscore + score
end 
puts totalscore 

# Q9
score_list = {japanese: 30, mathematics: 82, english: 94, science: 51, social_studies: 77}

score_list.each do |key, value|
  if value <= 30
    puts "#{key} : #{value} falled!!" 
  else
    puts "#{key} : #{value}"
  end
end

# Q10

class Food
  @@material = 0
  
end

def show_food.buy
  @@material += 1
end

def show_food.eat
  @@material -= 1
end

while true
  food = Food.new
  puts "食材をどうしますか？"
  puts "買う [1]"
  puts "作って食べる [2]"

  aaa = gets.to_i

  case aaa
  when 1
    puts "食材は購入されました。"
    food.show_food.buy
  end
  when 2
    if (material != 0)
      puts "Good"
    else
      puts "There is no food"
    end


