## メモ


## 仕様2: 同じグループの人がプログラムを実行できること

個人的なメモ
`git push -f`
で強制的に書き換える

### 実際のコード  

https://github.com/yokoto/yokoto-sezemi-2015-readable-code/blob/master/README.md


### どうしてリーダブルだと思っているのかの説明  

実際のコードを実行手順に書いた。


### この書き方の一言説明

マークダウンでコードをハイライトするときは  
`` ` ` ``  
で囲う。


## 仕様3: レシピデータを別ファイルに分離すること

### 実際のコード  

https://github.com/yokoto/yokoto-sezemi-2015-readable-code/blob/master/recipe.rb#L1

### どうしてリーダブルだと思っているのかの説明  

そのまま出力せずに、一度ローカル変数に代入した。

### この書き方の一言説明

ファイルの組み込み関数のIO#getsメソッドを使用して、recipe-data.txtの内容を読み込んだ。

