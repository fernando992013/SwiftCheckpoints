import Cocoa

func arrayOptions(_array: [Int]?) -> Int {return _array?.randomElement() ?? Int.random(in: 1...100)}

let array = arrayOptions(_array: [])
print(array)
