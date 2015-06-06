# 配列をID付きで表示するメソッド
def display_recipes
  @recipes.each_with_index do |recipe, recipe_id|
    puts "#{recipe_id.next}: #{recipe}"
  end
end

@recipes = []

# IO#getsを使ってファイルの内容を取得
# 取得したファイルの中身を配列に格納する
while recipe = gets
  @recipes << recipe.chomp
end

display_recipes
