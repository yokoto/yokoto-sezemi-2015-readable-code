# レシピ情報を管理するためのクラス
class Recipe
  attr_accessor :recipes

  def initialize(recipes=[])
    @recipes = recipes
  end

  def display_recipes
    @recipes.each_with_index do |recipe, recipe_id|
      puts "#{recipe_id.next}: #{recipe}"
    end
  end

  def get_with_id(id=nil)
    id = id.to_i - 1
    # 標準入力の値は文字列なので数値に変換して代入。
    # またIDを指定してもらっているので、-1することで配列に
    # 格納されているインデックスの番号に対応出来る

    @recipes.length > id && id >= 0 ? @recipes[id] : @recipes
  end
end

recipes = []

# 取得したファイルの中身を配列に格納する
while recipe = gets
  # getsメソッドはファイル名などを指定しないと標準入力から自動的に取得してくるらしい
  recipes << recipe.chomp
end

recipe = Recipe.new(recipes)
recipe.display_recipes

print "IDを入力して下さい > "
while id = STDIN.gets
  puts "#{id.chomp}: #{recipe.get_with_id(id)}"
  exit
end

