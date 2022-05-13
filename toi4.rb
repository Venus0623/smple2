p "簡単な数あてゲームです"
p "1〜10までの値を入力してください"
su = gets.to_i
ra = rand(1..10)

count = 1

while
  if su > 10 || su <= 0 
    p "入力値が大きすぎるまたは小さすぎますもう一度入力してください"
    su = gets.to_i
    count += 1 
  elsif su != ra
    p "等しくありませんもう一度1〜10までの値を入力してください"
    su = gets.to_i
    count += 1
  else su == ra
    break
  end
end

p "#{count}回目で成功"


