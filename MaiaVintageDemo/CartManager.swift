//
//  CartManager.swift
//  MaiaVintageDemo
//
//  Created by Victoria Maia on 9/3/22.
//

import Foundation


class CartManager: ObservableObject{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    let paymentHandler = PaymentHandler()
    @Published private(set) var paymentSucess = false
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product){
        products = products.filter { $0.id != product.id }
        total -= product.price
        
    }
    
    func pay(){
        paymentHandler.startPayment(products: products, total: total) { sucess in
            self.paymentSucess = sucess
            self.products = []
            self.total = 0
        }
    }
}
