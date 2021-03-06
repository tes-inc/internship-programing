# internship-programing

## :computer: Installation

### DockerToobox インストール

#### for Mac

https://docs.docker.com/toolbox/toolbox_install_mac/

#### for Windows

https://docs.docker.com/toolbox/toolbox_install_windows/ <br>
ダウンロード後、 `DockerToolbox.exe` を起動。パラメータはすべてデフォルトのままでインストールする。

### Docker Quickstart Terminal 起動

`Docker Quickstart Terminal` を選択してクリックする。<br>

### git clone

    $ git clone git@github.com:tes-inc/internship-programing.git
    $ cd internship-programing

### Docker machine 起動

    $ docker-machine start default
    $ docker-machine env default
    # 表示された環境変数をコピペ実行

### DockerコンテナのLinux環境にログイン

    $ docker-compose run app bash

---

## :star: FizzBuzz問題

```
1から100までの数を表示するプログラムを作成する。
ただし3の倍数のときは数の代わりに｢Fizz｣と、5の倍数のときは｢Buzz｣と表示し、
3と5両方の倍数の場合には｢FizzBuzz｣と表示すること。
```

### 作成プログラム

[app/fizz_buzz.rb](app/fizz_buzz.rb) ファイルに対して実装を行う。<br>
テストコードは、[spec/app/fizz_buzz_spec.rb](spec/app/fizz_buzz_spec.rb) ファイルに記述する。

### 実行方法

    $ ruby fizz_buzz.rb

### テストコード実行方法

    $ rspec spec/app/fizz_buzz_spec.rb

---

## :star: アナグラム問題

```
2つの引数がアナグラム(どちらも全く同じ文字を含んでいる)ならばtrueを返し、
それ以外の場合はfalseを返すプログラムを作成する。
```

### 作成プログラム

[app/anagram.rb](app/anagram.rb) ファイルに対して実装を行う。<br>
テストコードは、[spec/app/anagram_spec.rb](spec/app/anagram_spec.rb) ファイルに記述する。

### 実行方法

    $ ruby anagram.rb sample plesam

### テストコード実行方法

    $ rspec spec/app/anagram_spec.rb

---

## :star: リファクタリング問題

```
あるプログラムに対して、機能を変更せずに可読性を向上させる修正を行う。
```

### 修正プログラム

[app/readable_code.rb](app/readable_code.rb) ファイルに対して修正を行う。<br>
テストコードは、[spec/app/readable_code_spec.rb](spec/app/readable_code_spec.rb) ファイルに記述する。

### 実行方法

    $ ruby readable_code.rb ONE TWO THREE FOUR FIVE SIX

### テストコード実行方法

    $ rspec spec/app/readable_code_spec.rb
