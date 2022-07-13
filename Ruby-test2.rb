@janken = nil
@attimuite = nil

def janken 
  jan = ["グー","チョキ","パー"]
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  hand = gets.to_i
  #0~3以外を出した時用の分岐
  if hand <= 2 && hand >= 0
    puts "ホイ！"
    puts "------------------------------------"
    puts "あなた：#{jan[hand]}をだしました"
    enemy_hand = rand(3)
    buttle = enemy_hand - hand
    puts "あいて：#{jan[enemy_hand]}をだしました"
    if buttle == 1 || buttle == -2 
      puts "勝ち"
      puts "------------------------------------"
      @janken = true
      attimuite
    elsif buttle == 0
      puts "あいこで．．．"
      janken
    else
      puts "負け"
      puts "------------------------------------"
      @janken = false
      attimuite
    end
  elsif hand == 3
    puts "戦いを終了します"
    return exit
  else
    puts "0~2を入力してください"
    puts "------------------------------------"
    janken
  end
end

def attimuite
  hoi = ["上","右","下","左"]
  puts "あっちむいて〜"
  puts "0(上)1(右)2(下)3(左)"
  direction = gets.to_i
  enemy_direction = rand(4)
  if direction <= 3 && direction >= 0 
    puts "ホイっ"
    puts "------------------------------------"
    puts "あなた：#{hoi[direction]}"
    puts "あいて：#{hoi[enemy_direction]}"
    puts "------------------------------------"
    if direction == enemy_direction
      @attimuite = true
    else
      puts "じゃんけん．．．"
      janken
    end
  else
    puts "0~3を入力してください"
    puts "------------------------------------"
    attimuite
  end
end

puts "じゃんけん．．．"
janken
if @janken == true && @attimuite == true
  puts "あなたの勝利です"
else
  puts "あなたの敗北です"
end