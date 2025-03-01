import Collections
import Algorithms

let a = Int(readLine()!)!
let bc = readLine()!.split(separator: " ").map { s in Int(s)!}
let b = bc[0]
let c = bc[1]
let s = readLine()!
print("\(a+b+c) \(s)")
