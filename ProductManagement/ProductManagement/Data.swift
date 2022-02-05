
import SwiftUI

//struct Post: Codable, Identifiable {
//    let id = UUID()
//
//    var product_name: String
//    var brand_name: String
//    var price: Int
//    var
//}


struct CountryList: Codable {
   // let id = UUID()
    
    let productName, brandName: String
    let price: Int
    let address: Address
    let discription, date, time: String
    let image: String

    enum CodingKeys: String, CodingKey {
        case productName
        case brandName
        case price, address, discription, date, time, image
    }
}

// MARK: - Address
struct Address: Codable {
    let state, city: String
}

class Api {
   
    func getPosts() {
        guard let url = URL(string: "https://assessment-edvora.herokuapp.com") else { return }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let posts = try! JSONDecoder().decode([CountryList].self, from: data!)
            DispatchQueue.main.async {
              
                print(posts)
            }
            
        }
        .resume()
    }
}
