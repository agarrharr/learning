var playerName = "Adam"
var age = 31
var temperature = 72.6
var activeMember = true

age = age + 5

age = age + 5

let a = 5
let b = 2

let myResult = a / b
type(of: myResult)

var highScore = 100.0
let score = 101

highScore = Double(score)


var firstName: String
var middleName: String? //optional
var lastName: String

var email: String
var secondaryEmail: String? //optional

var daysUntilNextTrip: Int? //optional

email = "asdf"
daysUntilNextTrip = 1
daysUntilNextTrip = nil
daysUntilNextTrip = 2

// unwrap optional
if daysUntilNextTrip != nil {
    daysUntilNextTrip = daysUntilNextTrip! + 5
}

// this is "optional binding"
if let unwrappedInt = daysUntilNextTrip {
    print(unwrappedInt)
} else {
    // it's nil
}


// Arrays
var musicalNotes = ["Doe", "Ray", "Me", "Far", "Sew", "Law", "Tea", "Doe"]


// Switch
switch score {
case 1...10:
    print("Ok")
case 11...20:
    print("Good")
case 100...200:
    print("Amazing!")
default:
    break
}

// For loop
for note in musicalNotes {
    print(note)
}

for number in 0...10 {
    print(number)
}

// String interpolation
let trackName = "City to City"
let artist = "Gerry Rafferty"
let duration = "4:51"

let message = "Now playing \(trackName) by \(artist) which is \(duration) long"

func basicFunction(name: String) -> String {
    return "Hello \(name)!"
}

let greeting = basicFunction(name: "Adam")
print(greeting)
