//
//  NavigationBarView.swift
//  EdvoraAssessment
//
//  Created by Mohamed Reyad on 2/10/22.
//  Copyright © 2022 ReyadiOS. All rights reserved.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        ZStack{
            Color(K.backGroundColor)
            HStack(alignment: .center){
                Text("Edvora")
                    .font(.custom(K.headlineFontName, size: (K.headlineFontSize)))
                    .foregroundColor(K.textColor)
                    .bold()
                    .padding(.leading, 10)
                Spacer()
//                Spacer()
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
