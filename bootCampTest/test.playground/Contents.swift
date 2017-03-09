//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// to
typealias tesTupple = (id: Int, name: String)

// MARK: - Array
var names: [String] = ["Febri", "Pratama"]


//Array with different attributes
var anyArray = ["febri", 2, true] as [Any]

var str2: String?
var str3: String = "String 3"
var status: Bool?

if let varBaru = str2, let newStatus = status, newStatus == true {
    str3 = varBaru
    print("String 3: \(str3)")
}



// MARK: - Dictionary
var music: [String: Int] = ["ayumi": 3, "clapton": 5]


// MARK: - loop

for i in 1...100{
    
    if i == 20{
        break
    }
    
    if i % 2 == 0{
        continue
    }
    
    print(i)
}

for (index, value) in anyArray.enumerated(){
    print("\(index), \(value)")
}

for value in music{
    print("\(value.key), \(value.value)")
}

// - Struct

struct Movie{
    var id: Int
    var genre: String
    var title: String
    
    init(id:Int, title: String, genre: String) {
        self.id = id
        self.genre = genre
        self.title = title
    }
}



//- Enum


