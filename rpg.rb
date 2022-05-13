#【勇者クラス】
class Hero
  #≪勇者の基本情報≫
  @@hero_hp = 120  #勇者の体力をクラス変数で定義する（値は120で）
  @@hero_attack = 0  #勇者の攻撃力を定義するクラス変数の初期化を行う

  #≪勇者の体力を取得するメソッド≫
  def show_herohp
    @@hero_hp
  end

  #≪勇者の攻撃力を取得するメソッド≫
  def show_heroattack
    @hero_attack = rand(10..25) #攻撃力を10～25の値でランダムに作成する
  end

  #≪勇者が攻撃を受けた時の体力を減らすメソッド≫
  def show_herolosthp(monster_attack) #引数でモンスターの攻撃力を受け取る 
    @@hero_hp = @@hero_hp - monster_attack  #体力からモンスターの攻撃力分だけ、体力を削る処理を実装する
  end
end

#【モンスタークラス】
class Monster
  #≪モンスターの基本情報≫
  @@monster_hp = 100 #モンスターの体力をクラス変数で定義する（値は100で）
  @@monster_attack = 0  #勇者の攻撃力を定義するクラス変数の初期化を行う

  #≪モンスターの体力を取得するメソッド≫
  def show_monsterhp
    @@monster_hp
  end

  #≪モンスターの攻撃力を取得するメソッド≫
  def show_monsterattack
    @@monster_attack = rand(10..20)  #攻撃力を10～20の値でランダムに作成する
  end

  #≪モンスターが攻撃を受けた時の体力を減らすメソッド≫
  def show_monsterlosthp(hero_attack) #引数で勇者の攻撃力を受け取る
    @@monster_hp = @@monster_hp - hero_attack  #体力から勇者の攻撃力分だけ、体力を削る処理を実装する
  end
end

puts "モンスターが現れた！戦闘を開始します！"

while true
  #≪インスタンス化≫
  hero = Hero.new  #Heroクラスのインスタンス化
  hero_attack =  hero.show_heroattack  #勇者の攻撃力を取得する

  monster = Monster.new  #モンスタークラスのインスタンス化
  monster_attack = monster.show_monsterattack  #モンスターの攻撃力を取得する

  puts "何をしますか？"
  puts "戦う   [1]"
  puts "逃げる [2]"
  choice_hero = gets.to_i

  case choice_hero
  when 1
    #≪勇者の攻撃のターン≫
    puts "勇者の攻撃! #{hero_attack}のダメージを与えた"
    monster.show_monsterlosthp(hero_attack)  #モンスターの体力を減らすメソッドを呼び出す
    if (monster.show_monsterhp <= 0) #モンスターの体力を取得するメソッドを呼び出す <= 0
      puts "戦闘に勝ちました！"
      break
    else
      puts "モンスターの体力は残り #{monster.show_monsterhp}です！"
    end
    
    #≪モンスターの攻撃のターン≫
    puts "モンスターの攻撃! #{monster_attack}のダメージを受けた"
    hero.show_herolosthp(monster_attack)  #勇者の体力を減らすメソッドを呼び出す
    if (hero.show_herohp <= 0)#勇者の体力を取得するメソッドを呼び出す <= 0
      puts "勇者は負けました。"
      break
    else
      puts "勇者の体力は残り #{hero.show_herohp}です！"
    end
  #≪逃げるを選択した場合≫
  when 2
    puts "無事に逃げれた！"
    break
  else
    puts "正しい数字を入力してください"
  end
end