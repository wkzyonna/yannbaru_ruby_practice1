review_time = 0

if review_time >= 10
  puts "それぐらい出来て当たり前です！by土海"
elsif review_time >= 8
  puts "#{review_time}回しか復習しないなんて、管理栄養士になれると思っているのですか？by土海"
elsif review_time > 5
  puts "そんな#{review_time}回なんて復習したと思っているのですか？by土海"
elsif review_time > 0
  puts "復習の回数が少ないと思わないのですか？by土海"
else
  puts "なめてるんですか？なめないでくださいよ！by土海"
end