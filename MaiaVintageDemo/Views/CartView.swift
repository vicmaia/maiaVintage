//
//  CartView.swift
//  MaiaVintageDemo
//
//  Created by Victoria Maia on 9/3/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.paymentSucess{
                Text("Thanks for your purchase!")
                    .padding()
            }
            else{
                if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id){
                        product in
                        ProductRow(product: product)
                    }
                    HStack{
                        Text("Your cart total is")
                        Spacer()
                        Text("$\(cartManager.total).00")
                            .bold()
                    }
                    .padding()
                    
                    PaymentButton(action: cartManager.pay)
                        .padding()
                } else{
                    Text("Your cart is empty")
                }
            }
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
