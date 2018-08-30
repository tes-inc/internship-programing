# internship-programing

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

## :star: アナグラム問題

```
2つの引数を取り、引数がアナグラム(どちらも全く同じ文字を含んでいる)ならばtrueを、
そうでないならばfalseを返すプログラムを作成する。
```

### 作成プログラム

[app/anagram.rb](app/anagram.rb) ファイルに対して実装を行う。<br>
テストコードは、[spec/app/anagram_spec.rb](spec/app/anagram_spec.rb) ファイルに記述する。

### 実行方法

    $ ruby anagram.rb sample plesam

### テストコード実行方法

    $ rspec spec/app/anagram_spec.rb
