//
//  FiltersView.swift
//  EdvoraAssessment
//
//  Created by Mohamed Reyad on 2/9/22.
//  Copyright © 2022 ReyadiOS. All rights reserved.
//

import SwiftUI
//


struct FiltersView: View {
    
    init(_ categories: [Category]){
        self.categories = categories
    }
    
    var categories: [Category]
    var body: some View {
        VStack(alignment: .leading){
            Text("Filters")
                .font(.custom(K.titleFontName, size: K.filterFontSize))
                .foregroundColor(K.textColor)
            Divider()
            VStack(alignment: .leading){
                Button(action: {}) {
                    Spacer()
                    HStack(alignment: .center){
                        Text("Products")
                            .font(.custom(K.titleFontName, size: K.filterFontSize))
                            .foregroundColor(K.textColor)
                        Spacer()
                        Spacer()
                        Image(systemName: K.dropDownIcon)
                            .foregroundColor(K.textColor)
                        Spacer()
                    }
                }
                Button(action: {}) {
                    Spacer()
                    HStack(alignment: .center){
                            Text("State")
                                .font(.custom(K.titleFontName, size: K.filterFontSize))
                                .foregroundColor(K.textColor)
                            Spacer()
                            Spacer()
                            Image(systemName: K.dropDownIcon)
                                .foregroundColor(K.textColor)
                            Spacer()
                        }
                    }
                Button(action: {}) {
                    Spacer()
                        HStack(alignment: .center){
                            Text("City")
                                .font(.custom(K.titleFontName, size: K.filterFontSize))
                                .foregroundColor(K.textColor)
                            Spacer()
                            Spacer()
                            Image(systemName: K.dropDownIcon)
                                .foregroundColor(K.textColor)
                            Spacer()
                        }
                    }
            }
        }
        .frame(width: UIScreen.main.bounds.size.width/3,
               height: UIScreen.main.bounds.size.height/2,
               alignment: .center)
            .foregroundColor(K.productBackGroundColor)

    }
    }


//struct FiltersView_Previews: PreviewProvider {
//    static var previews: some View {
//        FiltersView()
//    }
//}



