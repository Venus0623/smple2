p "数値を入力してください"
su = gets.to_i

if su >= 10
  p "10以上の数字です"
elsif 1 <= su && su <= 9
  p "1以上9以下の数字です"
else
  p "0以下の数字です"
end