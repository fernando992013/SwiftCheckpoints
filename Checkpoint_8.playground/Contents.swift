import Cocoa

protocol Building {
    var roomCount: Int { get set}
    var cost: Int { get set }
    var agentName: String { get set }
    func salesSummary()
}

struct House: Building {
    var roomCount = 3
    var cost = 240000
    var agentName = "Mary Bell"
    func salesSummary() {
        let summary = """
                    House Summary
                    Price: \(cost)
                    Rooms: \(roomCount)
                    Agent: \(agentName)
                    """
        print(summary)
    }
}

extension House {
    mutating func addRoom() {
        roomCount += 1
    }
}

struct Office: Building {
    var roomCount = 25
    var cost = 670000
    var agentName = "Thomas Ford"
    func salesSummary() {
        let summary = """
                    Office Summary
                    Price: \(cost)
                    Rooms: \(roomCount)
                    Agent: \(agentName)
                    """
        print(summary)
    }

}

var house = House()
house.salesSummary()

let office = Office()
office.salesSummary()
