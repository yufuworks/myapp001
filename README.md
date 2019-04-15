# README poetter Senryu

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.5.1
* System dependencies

* Configuration

* Database creation
mySQL
* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

画像データから川柳を自動生成します。

❶ユーザー登録します
❷詠む から画像をアップロード
❸次にpoetterは画像とユーザーデータを元に予め登録された句のデータから川柳を作ります
❹他のユーザーの句に対してコメントを残せます。

ポイント
・デザインは捨ててアルゴリズムとテーブル処理に力を注ぎました。（ただしコメント機能は死んでます）
・画像データをbase64フォーマットの文字列に変換、ユーザーネームと共にバイナリの文字列に変換し
　文字列の適当な箇所の数値をピックアップし、数値計算。これをキーとして句のテーブルデータからfindメソッドで呼び出しています。

課題、展望
・キーを算出する計算結果がうまくばらけない。
　途中経過やデータの扱いを見直さないと思うようなランダム性はできなさそう。
・デザインの仕上げ、拡張
・同様の仕組みで演出パターンの生成などもできそう
・二人での合作など、その二人で生成するキーが作れれば一人での時と違う結果になる（のが望ましい）
・キャラクターが読み上げるような演出、表情などのパターン
・フォントの種類やポップの仕方、枠や吹き出しの演出パターン
・画像から句が生まれるまでの演出、アニメーション
・そのように生まれた句のスタンプが作れる
