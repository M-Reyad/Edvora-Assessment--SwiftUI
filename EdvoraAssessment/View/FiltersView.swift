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
    
//    let options = ["Egypt", "America", "KSA"]
    //    let categoryDropDown = DropDown()
    var body: some View {
        VStack(alignment: .leading){
            Text("Filters")
                .font(.custom(K.titleFontName, size: K.filterFontSize))
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
    }
    }
struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersView()
    }
}



