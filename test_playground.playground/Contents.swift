import UIKit

func myFunc(a:Int, b: Int) -> Int {
    return a + b
}

myFunc(a: 10, b: 15)

// Structure = Class in other languages
struct ChatView1 {
    
    // Properties
    var message:String = ""
        /// Computed Property
    var messageWithPrefix:String {
        return "I say: " + message
    }
    
    // View Code
    
    // Methods
    func sendChat() {
        // Code to send message
        print(messageWithPrefix)
    }
    
    func deleteChat() {
        // Code to delete message
        print(messageWithPrefix)
    }
}

struct DatabaseManager {
    
    func saveData(data:String) -> Bool {
        return true
    }
}

struct ChatView {
    
    var message = "hello"
    
    func SendChat() {
        
        let db = DatabaseManager()
        let successful = db.saveData(data: message)
    }
    
    
}
