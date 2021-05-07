require "./vagetable_part3-a.rb"
require "./vagetable_part3-b.rb"
require "./vagetable_part3-c.rb"

# 商品データ
product_params1 = [
  { name: "トマト", price: 100 },
  { name: "きゅうり", price: 200 },
  { name: "玉ねぎ", price: 300 },
  { name: "なす", price: 400 },
]

# 八百屋の開店（★八百屋2を追加★）
greengrocer1 = Greengrocer.new(product_params1)

# 追加商品データ
adding_product_params1 = [
  { name: "ごぼう", price: 250 },
  { name: "れんこん", price: 350 },
]

# 商品を登録（adding_product_params1 の商品を追加）
greengrocer1.register_product(adding_product_params1)

# お客さんの来店
user = User.new

# 商品を表示（★八百屋2を追加★）
greengrocer1.disp
# (2)商品を選択するメソッドを呼び出し（実引数を設定）
user.chosen(greengrocer1.products)

# (3)引数を設定し、「個数を質問する」メソッドを呼び出す
greengrocer1.ask_quantity(user.chosen_product)

# 個数を決定
user.decide_quantity

# (3)引数とコードを調整し、「合計金額を計算する」メソッドを呼び出す
greengrocer1.calculate_charges(user)