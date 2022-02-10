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
                if let safeData = data{
                    do {
                        let decodedData = try JSONDecoder().decode([Products].self, from: safeData)
                        DispatchQueue.main.async {
                            self.createCategoriesList(decodedData)
                            
                        }
                    }catch{
                        print("Error decoding Data ##\(error)!")
                    }
                }
            }
            //MARK:-4- Resume Task
            task.resume()
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
        for categoryString in categoryStringList{
            for result in decodedData{
                if result.product_name == categoryString{
                    productsList.append(result)
                }
                
            }
            let newCategory = Category(categoryString, productsList: productsList)
            categories.append(newCategory)

            productsList = []
        }
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


