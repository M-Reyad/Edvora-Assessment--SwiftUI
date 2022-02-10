//
//  Product.swift
//  
//
//  Created by Mohamed Reyad on 2/8/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct Address : Decodable, Hashable{
    var state : String
    var city : String
    
}

struct Products: View, Hashable, Decodable{
    
    var product_name : String
    var brand_name : String
    var price : Int
    var discription: String
    var date : String
    var address : Address
    var image: String
    
    init(_ product: Products){
        self.product_name = product.product_name
        self.brand_name = product.brand_name
        self.price = product.price
        self.discription = product.discription
        self.date = product.date
        self.address = product.address
        self.image = product.image
        
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .center){
                Spacer()
                WebImage(url: URL(string: self.image))
                    .placeholder(Image("Image"))
                    .resizable()
                    .frame(width: UIScreen.main.bounds.size.width/2.75,
                           height: UIScreen.main.bounds.size.height/4.75,
                           alignment: .leading)
                    .scaledToFit()
                    .cornerRadius(UIScreen.main.bounds.size.width/50)
                Spacer()
                VStack(alignment: .leading){
                    Spacer()
                    Text(product_name)
                        .bold()
                        .font(.custom(K.titleFontName, size: K.subtitleFontsize))
                        .lineLimit(2)
                        .allowsTightening(true)
                    Spacer()
                    Spacer()
                    Text(brand_name)
                        .font(.custom(K.titleFontName, size: K.subtitleFontsize))
                    Spacer()
                    Spacer()
                    Text(String(price))
                        .font(.custom(K.titleFontName, size: K.subtitleFontsize))
                        .bold()
                    Spacer()
                }
                .padding(2)
                Spacer()
            }
            .padding(2)
            HStack(alignment: .center){
//                Text("city")
                Text(self.address.city)
                    .font(.custom(K.bodyFontName, size: K.bodyFontSize))
                Spacer()
                Text(self.date)
                    .font(.custom(K.bodyFontName, size: K.bodyFontSize))
            }
            .padding(2)
            Text(String(self.discription))
                .font(.custom(K.bodyFontName, size: K.bodyFontSize))
                .padding(2)
        }
        .frame(width: UIScreen.main.bounds.size.width/1.5,
               height: UIScreen.main.bounds.size.height/3,
               alignment: .center)
            .cornerRadius(UIScreen.main.bounds.size.width/40)
            .background(K.productBackGroundColor)
            .padding(EdgeInsets(top: 1, leading: 2 , bottom: 1, trailing: 2))
            
            
    }
    
}



//struct ProductView_Previews: PreviewProvider {
//    static var previews: some View {
//        Products()
//    }
//
//}
