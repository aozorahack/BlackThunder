# BlackThunder

~青空文庫のための、新しい方法~

従来の青空文庫は完全に校正が終わったものを公開していますが、
このシステムは「永遠のベータ版(perpetual beta)」の概念を持ち込んだものです。
より軽量に、機動性を高め、ソーシャルに、閲覧者がそのまま入力校正者になれるというものです。


コンセプト

* Webインターフェース
* スキャンイメージを共有
* バックエンドにGitを使う
* ページ単位で入力
* UTF-8を使用
* 包摂／異体字は原文通りに
* 機械処理に頼る

青空文庫の本来の流れは１冊まるごと特定の工作員が入力→別の工作員が校正→青空文庫で公開というものですが、
BlackThunderでは、スキャンイメージだけ用意→文字起こし入力ゼロの状態から公開→Webシステム上で入力→作業途中のものもスキャンイメージとあわせて閲覧可能
という仕組みで進めます。

## 起動方法

レポジトリディレクトリに移り、rails serverと入力してください。
* Listening on tcp://localhost:3000
と出るので
ブラウザで http://localhost:3000を開いてください。

## システム要件

* Ruby
* Rails
* Re:View
* TeX

### Ubuntu Linux 16.04 での環境構築

$ sudo apt-get install ruby ruby-railties ruby-bundler
$ sudo apt-get install libxml2 libxml2-dev libxslt1-dev
$ sudo apt-get install nodejs
$ bundle install

BlackThunder を clone してきてディレクトリに入ってから
$ rails server
最初は

bin/rails db:migrate

と出るので一旦停止して

bin/rails db:migrate

を実行してからもう一度
$ rails server


-- 
