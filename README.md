# 競プロ用Swift DevContainer

VSCode+DevContainerで動作させるSwiftコンパイラ環境

回答を `Sources/$NAME/$NAME.ts` ($NAME=a,b,c,d,e,f)に記述し、以下のコマンドでコンパイル・実行可能。

```bash
./run.sh $NAME
```

# コード例

```swift
import Collections
import Algorithms

let a = Int(readLine()!)!
let bc = readLine()!.split(separator: " ").map { s in Int(s)!}
let b = bc[0]
let c = bc[1]
let s = readLine()!
print("\(a+b+c) \(s)")
```
