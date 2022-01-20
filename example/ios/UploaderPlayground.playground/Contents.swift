import UIKit
import Foundation

let firstName = "Joe"
let lastName = "Doe"
let middleName = "Mc."
let age = 100
let weight = 45




let jsonObject: [String: Any] = [
    
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "age": age,
        "weight": weight
    
]

let formObject: [String: String] = [
    
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "age": "100",
        "weight":"45"
    
]

func uploadFormUrlEncoded(
    parameters data: [String: String?]?
) {
    var requestBodyComponents = URLComponents()
    var items = [URLQueryItem]()
    data?.forEach{
        print("appending \($0.key) and \(String(describing: $0.value))")
        items.append(URLQueryItem(name: $0.key, value: $0.value))
    }
    
    requestBodyComponents.queryItems = items
    
    print("items \(String(describing: requestBodyComponents.queryItems?.count))")
    let url = URL(string: "https://mbp.sharpred.dev/uploadFormUrlEncoded")
    guard let requestUrl = url else { fatalError() }
    var request = URLRequest(url: requestUrl)
    request.httpMethod = "POST"
    // Set HTTP Request Header
    request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
    request.httpBody = requestBodyComponents.query?.data(using: .utf8)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if let error = error {
                print("Error took place \(error)")
                return
            }
            guard let data = data else {return}
            print("form ok",data)
     
    }
    task.resume()

}


func uploadJson(
    parameters data: [String: Any?]?
) {
    var obj: [String: Any] = [String: Any]()
    data?.forEach{
        obj[$0.key] = $0.value
    }
    let formData = try? JSONSerialization.data(withJSONObject: obj)
   
    let str = String(data: formData!, encoding: .utf8)
   
    print("str is \(str!.count) length")
   
    let url = URL(string: "https://mbp.sharpred.dev/uploadJson")
    guard let requestUrl = url else { fatalError() }
    var request = URLRequest(url: requestUrl)
    request.httpMethod = "POST"
    // Set HTTP Request Header
    request.setValue("application/json", forHTTPHeaderField: "Accept")
    request.setValue("\(str!.count)", forHTTPHeaderField: "Content-Length")
    request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
    request.httpBody = formData
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if let error = error {
                print("Error took place \(error)")
                return
            }
            guard let data = data else {return}
            print("ok",data)
     
    }
    task.taskDescription
    task.resume()

}
uploadFormUrlEncoded(parameters: formObject)
//uploadJson(parameters: jsonObject)

