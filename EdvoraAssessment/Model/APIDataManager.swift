//
//  APIDataManager.swift
//  EdvoraAssessment
//
//  Created by Mohamed Reyad on 2/7/22.
//  Copyright © 2022 ReyadiOS. All rights reserved.
//

import Foundation

class APIDataManager: ObservableObject {
    
    @Published var products = [Products]()
    @Published var categories = [Category]()
    
    func fetchData(){
        //MARK:-1- Create URL
        if let safeURL = URL(string: "https://assessment-edvora.herokuapp.com/"){
            let url = safeURL
            //MARK:-2- Create Session
            let session = URLSession(configuration: .default)
            //MARK:-3- Give the URL Session a Task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print("Error in session data Task: \(error!)")
                    return
                }
                print("Here2")
                if let safeData = data{
                    print("Hereeee3")
                    
                    do {
                        let decodedData = try JSONDecoder().decode([Products].self, from: safeData)
                        DispatchQueue.main.async {
                            print("Number of decoded Data: \(decodedData.count)")
                            self.createCategoriesList(decodedData)
                            //                            self.createCategoriesList(self.fetchedData)
                            //                            print(decodedData.count)
                            //                            print(self.products)
                            
                            //                            print(self.categories.count)
                            
                            
                        }
                    }catch{
                        print("Error decoding Data ##\(error)!")
                    }
                }
            }
            //MARK:-4- Resume Task
            task.resume()
            //            createCategoriesList(products)
        }
        
    }
        
        
        func createCategoriesList(_ decodedData: [Products]){
            var categoryStringList = [String]()
            var productsList = [Products]()
            for result in decodedData{
                if categoryStringList.contains(result.product_name){
                } else {
                    categoryStringList.append(result.product_name)
                }
            }
        print(categoryStringList)
        print("Count of Products list in the fetching func \(productsList.count)")
        print("Count of Categories\(self.categories.count)& Products \(self.products.count)")
        for categoryString in categoryStringList{
            for result in decodedData{
                if result.product_name == categoryString{
                    productsList.append(result)
                }
                
            }
            let newCategory = Category(categoryString, productsList: productsList)
            categories.append(newCategory)
            print(productsList.count)
            print(self.categories.count)
            productsList = []
        }
        print("Count of Categories\(self.categories.count)& Products \(self.products.count)")
        print("Number of products \(self.products.count) and Number of decoded Data \(decodedData.count)")
}
    
    
    func markAll(){
        for i in (0...categories.count-1){
            if categories[i].filtered != true{
                categories[i].filtered = true
            }
        print("All Marked")
}
    }
}
//    let products : [Product] =
//        [ProductView(id: "1", productName: "Bags", brandName: "CAT", price: 120, desc: "This is the most lovely Bag you could ever have!"),
//         ProductView(id: "2", productName: "Bags", brandName: "D&G", price: 130, desc: "This is the most lovely Bag you could ever have!"),
//         ProductView(id: "3", productName: "Shoes", brandName: "D&G", price: 140, desc: "This is the most lovely Shoes you could ever have!"),
//         ProductView(id: "4", productName: "Dress", brandName: "CAT", price: 200, desc: "This is the most lovely Dress you could ever have!"),
//         ProductView(id: "5", productName: "Dress", brandName: "D&G", price: 190, desc: "This is the most lovely Dress you could ever have!")]
//

