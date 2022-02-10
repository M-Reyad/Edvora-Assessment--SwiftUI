//
//  Category.swift
//  EdvoraAssessment
//
//  Created by Mohamed Reyad on 2/8/22.
//  Copyright © 2022 ReyadiOS. All rights reserved.
//

import SwiftUI

struct Category: View, Hashable {
    
    var productName : String = ""
    var filtered = true
    var products = [Products]()
    
    
    init(_ categotyName: String, productsList: [Products]) {
        self.productName = categotyName
        self.products = productsList
    }
    
    
    var body: some View {
        
        VStack(alignment: .leading){
            Spacer()
            Text(productName)
                .font(.custom(K.titleFontName, size: K.titleFontSize))
                .bold()
                .lineLimit(4)
            Divider()
            if self.products.count != 0 {

                ScrollView(.horizontal) {
                        HStack(spacing: 7){
                            ForEach(self.products, id: \.self){ product in

                                Products(product)
                                   

                                
                        }
//                            Spacer()
                    }
                }

 }
            Spacer()
            Divider()
            Spacer()
        }

        
    }
}
//struct CategoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryView()
//    }
//}

