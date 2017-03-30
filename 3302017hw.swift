//Fizzbuzz 

enum Answer : Equatable {
    case fizz
    case buzz
    case fizzBuzz
    case number(Int)
    
    static func == (lhs: Answer, rhs: Answer) -> Bool {
        switch (lhs, rhs) {
        case (.fizz, .fizz), (.buzz, .buzz), (.fizzBuzz, .fizzBuzz):
            return true
        case (.number(let leftNum), .number(let rightNum)):
            return leftNum == rightNum
        case (.fizz, _), (.buzz, _), (.fizzBuzz, _), (.number, _):
            return false
        }
    }
}

func transform(_ n: Int) -> Answer {
    if (n % 3 == 0) && (n % 5 != 0) {
        return .fizz
    } else if (n % 3 != 0) && (n % 5 == 0) {
        return .buzz
    } else if (n % 3 == 0) && (n % 5 == 0) {
        return .fizzBuzz
    } else {
        return .number(n)
    }
    
}

// for i in 1...100 {
//    print(transform(i))
// }

let isEqual = false

func transformSwitch(_ n: Int) -> Answer {
    switch (n % 3 == 0, n % 5 == 0) {
    case (true, false):
        return .fizz
    case (false, true):
        return .buzz
    case (true, true):
        return .fizzBuzz
    default:
        return .number(n)
    }
}

for i in 1...100 {
    print(transformSwitch(i))
}



//Startupizer

let wordString = "Iron Yard"

func startupizer(_ word: String) -> [Character] {
    var array: [Character] = []
    for character in word.characters {
        array.append(character)
    }
    return array
}

print(startupizer(wordString))
var stringWVowels = startupizer(wordString)

func removevowels(_ charArray: [Character]) -> [Character] {
    
    var a = 1
    let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var devowelarray: [Character] = []
    
    for i in charArray {
        if charactersToRemove.contains(i) && a % 2 == 1 {
            a = a + 1
        } else if charactersToRemove.contains(i) && a % 2 == 0 {
            devowelarray.append(i)
            a = a + 1
        }
        else {
            devowelarray.append(i)
        }
    }
    
    return devowelarray
}

print(removevowels(stringWVowels))
