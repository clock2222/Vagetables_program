puts "いらっしゃいませ！商品を選んで下さい。"

products = [
  {name: "トマト", price: 100},
  {name: "きゅうり", price: 200},
  {name: "玉ねぎ", price: 300},
  {name: "なす", price: 400}
]

products.each.with_index(1) do |product,index|
  puts "#{index}.#{product[:name]}( #{product[:price]}円 )"
end

while true
  print "商品番号を選択＞"
  select_product = gets.to_i
break if (1..4).include?(select_product)
  puts "選択が正しくありません"
end

while true
  puts "「#{products[select_product - 1][:name]}」ですね。何個買いますか？"
  quantity_select = gets.to_i
  break if quantity_select >= 1
  puts "選択が正しくありません"
end

total_value = quantity_select * products[select_product - 1][:price]
if quantity_select >= 5
  puts "５個以上なので１０％割引となります！"
  total_value *= 0.9
end
puts "合計金額は#{total_value.floor}です。"
puts "ありがとうございました！"

