## 環境構築
https://github.com/leoafarias/fvm を参考

- dart install
```shell script
brew tap dart-lang/dart
brew install dart
```

- fvm install
```shell script
pub global activate fvm
```

- PATHを.bashrc, .bash_profileなどに追加
```shell script
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

- flutter install

https://github.com/qiuyin/hana-handmade/blob/main/.fvm/fvm_config.json に指定したflutter versionをinstall
```shell script
fvm install
```

- flutter sdk pathをandroid studioに設定する

Copy the **_absolute_** path of fvm symbolic link in your root project directory. Example: `/absolute/path-to-your-project/.fvm/flutter_sdk`

In the Android Studio menu open `Languages & Frameworks -> Flutter` or search for Flutter and change Flutter SDK path. Apply the changes. You now can Run and Debug with the selected versions of Flutter.
Restart Android Studio to see the new settings applied.

[Add your IDE instructions here](https://github.com/leoafarias/fvm/issues)
