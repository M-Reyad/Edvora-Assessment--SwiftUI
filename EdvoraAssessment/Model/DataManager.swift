//
//  DataManager.swift
//  EdvoraAssessment
//
//  Created by Mohamed Reyad on 2/7/22.
//  Copyright © 2022 ReyadiOS. All rights reserved.
//

import Foundation


struct Products: Identifiable, Codable {
    var id = UUID()
    var product_name: String
    var brand_name: String
    var price : Int
    var discription : String
    var date : String
    var image : UIImage
    var state : String
    var city : String
}

class DataManager {
    
    func getData(completion: @escaping (([Products]) -> ())){
        //1- Create URL
        if let safeURL = URL(string: "http://assessment-edvora.herokuapp.com"){
            let url = safeURL
        //2- Create Session
            let session = URLSession(configuration: .default)
        //3- Give URLSession a task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData = data{
                    do{
                        let decodedData = try JSONDecoder().decode(APIData.self, from: safeData)
                        DispatchQueue.main.async {
                            completion[decodedData]
                            
                        }}catch{
                            print(error)
                        }
                    }
                }
            task.resume()
            }
        }
        //4- Run the task
    }

