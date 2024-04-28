import Cocoa

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    
    func speak() {
        print("Bark!, Bark!, Bark!")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs:legs)
    }
    
    func speak() {
        print("Meow!, Meow!, Meow!")
    }
    
    func tame() -> String {
        if isTame {
            return "This animal is tame."
        } else {
            return "This animal may or may not be tame."
        }
    }
}

class Corgi: Dog {
    override func speak() {
        print("Barky!, Bark!, Bark!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Bark!, Bark!, Barky!, Barky!!")
    }
}

class Persion: Cat {
    override func speak() {
        print("Meow!, Meowwww!, Meow!")
    }
    
    override func tame() -> String {
         if isTame {
             return "This Persian cat is tame."
         } else {
             return "This Persian cat is not tame."
         }
     }
}

class Lion: Cat {
    override func speak() {
        print("Roar!!!!")
    }
    
   override func tame() -> String {
        if isTame {
            return "This lion is tame."
        } else {
            return "This lion is not tame."
        }
    }

}
//prints "Roar!!!!" and "This lion is not tame."
let lion = Lion(isTame: false, legs: 4)
lion.speak()
print(lion.tame())
