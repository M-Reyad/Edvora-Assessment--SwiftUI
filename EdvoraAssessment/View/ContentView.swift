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
                        self.filtersPressed.toggle()})
                    {
                        HStack{
                            Text("Filters")
                                .font(.custom(K.titleFontName, size: K.filterFontSize))
                                .foregroundColor(K.textColor)
                                .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                            .cornerRadius(7)
                            Image(systemName: K.dropDownIcon)
                                .foregroundColor(K.textColor)
//                                .padding(.trailing, 3)
                                .padding(.init(top: 5, leading: 0, bottom: 5, trailing: 10))
                            .cornerRadius(7)
                        }
//                        .clipShape(Capsule())
                        .background(K.textBackgroundColor)
                    }
                        
                    .sheet(isPresented: $filtersPressed){
                     FiltersView(self.apiManager.categories)
                    }
                    Spacer()
                    Spacer()
                    
                    Button(action: {
                        self.apiManager.markAll()
                    })
                    {
                        Text("clear filters")
                            .font(.custom(K.titleFontName, size: K.filterFontSize))
                            .foregroundColor(K.textColor)
                        .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
                        .cornerRadius(7)
                    }
//                    .padding(.init(top: 0, leading: 2, bottom: 0, trailing: 2))
//                    .clipShape(Capsule())
                    .background(K.textBackgroundColor)
//                    .padding(.init(top: 0, leading: 2, bottom: 0, trailing: 2))
                    Spacer()
                }
            
            if self.apiManager.categories.count != 0 {
                ScrollView(.vertical){
                    
                    
                    ForEach(self.apiManager.categories, id: \.self) { category in
                        Category(category.productName, productsList: category.products)
                    }
                }
                .padding(.init(top: 0, leading: 2, bottom: 0, trailing: 2))
            }
            Spacer()
            
        }
        .padding(.init(top: 0, leading: 3, bottom: 2, trailing: 3))
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


