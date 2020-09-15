# 勇者のHP、攻撃力、守備力
brave_hp = 30
brave_attack = 10
brave_defense = 5

# 敵のHP、攻撃力、守備力
enemy_hp = 30
enemy_attack = 5
enemy_defense = 10

# 勇者が敵にダメージを与える計算と表示
# 攻撃にランダム要素を追加
enemy_damege = brave_attack - enemy_defense + rand(3..5)
enemy_hp = enemy_hp - enemy_damege

# 会心の一撃を与える
select_attack = rand(4)

if select_attack == 0
  # 会心の一撃
  puts "会心の一撃だ！"
  enemy_damege = brave_attack - enemy_defense + rand(30..40)
  enemy_hp = enemy_hp - enemy_damege
else 
  # 通常攻撃
  puts "通常攻撃！"
  enemy_damege = brave_attack - enemy_defense + rand(3..5)
  enemy_hp = enemy_hp - enemy_damege
end

puts <<~text
敵に#{enemy_damege}のダメージを与えた。
敵の残りHPは#{enemy_hp}だ！
text

if enemy_hp > 20
  puts "敵は元気だ！"
elsif enemy_hp > 10
  puts "敵は少し弱っている。"
elsif enemy_hp > 5
  puts "敵はかなり弱っている"
elsif enemy_hp > 0
  puts "敵は瀕死状態だ"
else
  puts "敵は死んだ" 
end



# 敵が勇者にダメージを与える計算と表示
# 攻撃にランダム要素を追加
brave_damege = enemy_attack - brave_defense + rand(3..5)
brave_hp = brave_hp - brave_damege


# 会心の一撃を与える
select_attack = rand(4)

if select_attack == 0
  # 会心の一撃
  puts "会心の一撃だ！"
  brave_damege = enemy_attack - brave_defense + rand(30..40)
  brave_hp = brave_hp - brave_damege
else 
  # 通常攻撃
  puts "通常攻撃！"
  brave_damege = enemy_attack - brave_defense + rand(3..5)
  brave_hp = brave_hp - brave_damege
end

puts <<~text
勇者に#{brave_damege}のダメージを与えた。
勇者の残りHPは#{brave_hp}だ！
text

if brave_hp > 20
  puts "勇者は元気だ！"
elsif brave_hp > 10
  puts "勇者は少し弱っている。頑張れ！"
elsif brave_hp > 5
  puts "勇者はかなり弱っている。"
elsif brave_hp > 0
  puts "勇者は瀕死状態だ。回復を使用しましょう"
else
  puts "勇者は死んだ"
end


