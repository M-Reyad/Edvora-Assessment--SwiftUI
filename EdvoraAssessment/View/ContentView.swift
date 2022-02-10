//
//  ContentView.swift
//  EdvoraAssessment
//
//  Created by Mohamed Reyad on 2/7/22.
//  Copyright © 2022 ReyadiOS. All rights reserved.
//

import SwiftUI
//import NavigationBarColor

struct ContentView: View {

    @ObservedObject var apiManager = APIDataManager()
    
    var body: some View {
        
        
        NavigationView{
//            ZStack{
//                Color(K.backGroundColor)
                
            
            VStack(alignment: .leading){
                
                HStack(alignment: .top){
                    Spacer()
                    Button(action: {
                        print("Pressed!!")
                        if FiltersView.filtersPressed != false {
                            FiltersView.filtersPressed = false
                        }else{
                            FiltersView.filtersPressed = true }
                        
                        FiltersView()
                            .position(x:100, y:100)
                            .frame(width: UIScreen.main.bounds.size.width/4,
                                   height: UIScreen.main.bounds.size.height/3,
                                   alignment: .center)
                    }, label: {
                        HStack{
                            Spacer()
                            Text("Filters")
                                .font(.custom(K.titleFontName, size: K.filterFontSize))
                                .foregroundColor(K.textColor)
                            Spacer()
                            Spacer()
                            Image(systemName: K.dropDownIcon)
                                .foregroundColor(K.textColor)
                            Spacer()
                        }
                    })
                        .padding(7)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .background(K.textBackgroundColor)
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Button(action: {
                        self.apiManager.markAll()
                    })
                    {
                        Text("clear filters")
                            .font(.custom(K.titleFontName, size: K.filterFontSize))
                            .foregroundColor(K.textColor)
                    }
                    .padding(6)
                    .clipShape(Capsule())
                    .background(K.textBackgroundColor)
                    
                }
//                
                if self.apiManager.categories.count != 0 {
                    ScrollView(.vertical){
                        

                        ForEach(self.apiManager.categories, id: \.self) { category in
                            Category(category.productName, productsList: category.products)
                        }
                    }
                    .padding(2)
                }
                Spacer()
                
            }
            .padding(3)
            .navigationBarTitle("Edvora", displayMode: .automatic)
            
        
            
        .onAppear {
            print("Appeared!!")
            DispatchQueue.main.async {
                self.apiManager.fetchData()
            }
        }
        }
     .padding(2)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let list = [Product(product_name: "Berkshire Hathway",
//                    brand_name: "Berkshire",
//                    price: 900,
//                    discription: "Its a good product",
//                    date: "2016-10-12T23:05:52.617Z",
//                    address: ["city": "Palakkad", "state": "Kerala"]),
//            Product(product_name: "Berkshire Hathway",
//                    brand_name: "Berkshire",
//                    price: 900,
//                    discription: "Its a good product",
//                    date: "2017-12-17T22:45:41.740Z",
//                    address: ["state": "Kerala", "city": "Perinthalmanna"]),
//            Product(product_name: "Berkshire Hathway",
//                    brand_name: "Berkshire",
//                    price: 900,
//                    discription: "Its a good product",
//                    date: "2019-05-03T16:35:57.427Z",
//                    address: ["state": "Meghalaya", "city": "Tura"])]
