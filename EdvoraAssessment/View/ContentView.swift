//
//  ContentView.swift
//  EdvoraAssessment
//
//  Created by Mohamed Reyad on 2/7/22.
//  Copyright © 2022 ReyadiOS. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State private var filtersPressed = false
    @ObservedObject var apiManager = APIDataManager()
    
    var body: some View {
        
        
        //        NavigationView{
        ZStack{
            Color(K.backGroundColor)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(alignment: .leading){
                NavigationBarView()
                    .frame(width: UIScreen.main.bounds.size.width,
                           height: UIScreen.main.bounds.size.height/8,
                           alignment: .leading)
                HStack(alignment: .top){
                    Spacer()
                    Button(action: {
                        
                        print("Pressed!!")
                        self.filtersPressed.toggle()
                    })
                    {
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
                        .padding(6)
                        .clipShape(Capsule())
                        .background(K.textBackgroundColor)
                        /*Button(action: {{
                         print  ("Pressed!!")
                         self.filtersPressed.toggle()
                         }.sheet(is Presented: $filtersPressed){
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
                         */
                    }
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
        .padding([.leading, .trailing], 5)
            //            .navigationBarTitle("Edvora", displayMode: .automatic)
            
            
            
            .onAppear {
                print("Appeared!!")
                DispatchQueue.main.async {
                    self.apiManager.fetchData()
                }
        }
    }
    //     .padding(2)
}

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


