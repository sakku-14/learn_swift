enum SakumaFamily: Int {
    case hiroyuki, shoko
    case hironobu, kazu, yuki

    func showPosition() -> String {
        
        switch self {
        case .hiroyuki:
            return "Father"
        case .shoko:
            return "Mother"
        default:
            return "Child"
            
        }
        
    }
}

let yuki = SakumaFamily.yuki
print("\(yuki.showPosition())")
print(yuki)
print(yuki.rawValue)

enum SakumaFamily2: Double {
    case hiroyuki = 1.1
    case shoko = 1.2
    case hironobu = 2.1, kazu = 2.2, yuki = 2.3

    func showPosition() -> String {
        
        switch self {
        case .hiroyuki:
            return "Father"
        case .shoko:
            return "Mother"
        default:
            return "Child"
            
        }
        
    }
}

let yuki2 = SakumaFamily2.yuki
print("\(yuki2.showPosition())")
print(yuki2)
print(yuki2.rawValue)


enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}
