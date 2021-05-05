# 商品の表示
def disp(products)
  puts "いらっしゃいませ！商品を選んで下さい。"
  products.each.with_index(1) do |product, index|
    puts "#{index}.#{product[:name]}( #{product[:price]}円 )"
  end
end

# 商品の選択
def chosen(products)
  while true
    print "商品番号を選択＞"
    select_product = gets.to_i
    break if (1..4).include?(select_product)
    puts "選択が正しくありません"
  end
  products[select_product - 1]
end


# 商品の個数
def quantity(chosen)
  while true
    puts "「#{chosen[:name]}」ですね。何個買いますか？"
    quantity_select = gets.to_i
    break if quantity_select >= 1
    puts "選択が正しくありません"
  end
  quantity_select
end

# 商品の合計
def total(chosen, quantity)
  total = quantity * chosen[:price]
  if quantity >= 5
    puts "５個以上なので１０％割引となります！"
    total *= 0.9
  end
  puts "合計金額は#{total.floor}です。"
  puts "ありがとうございました！"
end

products = [
  { name: "トマト", price: 100 },
  { name: "きゅうり", price: 200 },
  { name: "玉ねぎ", price: 300 },
  { name: "なす", price: 400 },
]

disp(products)
chosen = chosen(products)
quantity = quantity(chosen)
total(chosen,quantity)






