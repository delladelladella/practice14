import UIKit

protocol ProduceApples{
    func growApples()
}

class Tree{
    let age: Int
    var region: String
    
    func grow(){
        print("Tree goes 50cm")
    }
    
    init(age: Int, region: String) {
        self.age = age
        self.region = region
    }
}

class AppleTree: Tree, ProduceApples {
    func growApples() {
        print("Apples have been produced.")
    }
}

var theAppleTree = AppleTree(age: 3, region: "South West Region")
theAppleTree.growApples()

protocol MakeMeLaugh{
    func evokeLaughter()
}

struct TreeWithSignOnIt: MakeMeLaugh{
    var funnyString = "Is your refridgerator running?"
    
    func evokeLaughter(){
        print("Ha ha ha")
    }
}

var tree1 = TreeWithSignOnIt()
tree1.evokeLaughter()

protocol TwoTimes{
    func oneTimes()
    func twoTimes()
}

class Artist{
    let name: String
    var genre: String
    var message: String
    
    init(name: String, genre: String, message: String) {
        self.name = name
        self.genre = genre
        self.message = message
    }
}

class RecordingArtist: Artist, TwoTimes {
    func oneTimes() {
        print("One Time")
    }
    func twoTimes() {
        print("Two Times")
    }
}

var twochainz = RecordingArtist(name: "2chainz", genre: "rap", message: "go crazy")
twochainz.twoTimes()

protocol GoodHabits{
    func priming()
    func meditation()
    func visualization()
}

struct HumanBeing: GoodHabits{
    func priming() {
        print("prime")
    }
    
    func meditation() {
        print("meditate")
    }
    
    func visualization() {
        print("visualize")
    }
    
    let name: String
    var age: Int
    var race: String
    
}

var d = HumanBeing(name: "Derwin", age: 39, race: "Black")
print(d)
