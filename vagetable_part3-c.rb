class User
  # (1)クラスの外から参照可能にする
  attr_reader :chosen_product, :quantity_of_product
  # 商品の選択
  def chosen(products)
    while true
      print "商品番号を選択＞"
      select_product = gets.to_i
      @chosen_product = products.find { |product| product.id == select_product }
      break if !@chosen_product.nil?
      puts "#{products.first.id}から#{products.last.id}の番号から選んでください"
    end
    products[select_product - 1]
  end

  # 個数を決定する（★ここを追加★）
  def decide_quantity
    while true
      print "個数を入力 >"
      @quantity_of_product = gets.to_i
      break if @quantity_of_product >= 1
      puts "１個以上選んでください。"
    end
  end
end
