import UIKit
import Foundation

let firstName = "Joe"
let lastName = "Doe"
let middleName = "Mc."
let age = 100
let weight = 45

let jsonObject: [String: [String:Any]] = [
    "user1": [
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "age": age,
        "weight": weight
    ]
]
if let data = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted),
    let str = String(data: data, encoding: .utf8) {
    print(str)
}

struct ToDoResponseModel: Codable {
    var userId: Int
    var id: Int?
    var title: String
    var completed: Bool
}
let url = URL(string: "https://mbp.sharpred.dev/uploadJson")
guard let requestUrl = url else { fatalError() }
var request = URLRequest(url: requestUrl)
request.httpMethod = "POST"
// Set HTTP Request Header
request.setValue("application/json", forHTTPHeaderField: "Accept")
request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
let newTodoItem = ToDoResponseModel(userId: 300, title: "Urgent task 2", completed: true)
let jsonData = try JSONEncoder().encode(newTodoItem)
request.httpBody = jsonData
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        
        if let error = error {
            print("Error took place \(error)")
            return
        }
        guard let data = data else {return}
        print("ok",data)
 
}
task.resume()
