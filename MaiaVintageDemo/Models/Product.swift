//
//  Product.swift
//  MaiaVintageDemo
//
//  Created by Victoria Maia on 9/3/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    
}

var productList = [Product(name: "Sterling Silver Vintage Bracelet", image: "bracelet1", price: 54),
                   Product(name: "Black Crow Earrings", image: "earring1", price: 89),
                   Product(name: "Black Star Necklace", image: "necklace3", price: 79),
                   Product(name: "Adjustable Gold Chunky Chain", image: "necklace4", price: 94),
                   Product(name: "Adjustable Evil Eyes Necklace", image: "necklace5", price: 99),
                   Product(name: "Hurricane Necklace", image: "necklace6", price: 65),
                   Product(name: "Rose Quartz Ring", image: "ring1", price: 54),
                   Product(name: "Adjustable Turquoise Ring", image: "ring2", price: 43),
                   Product(name: "Sterling Silver Thumb Ring", image: "ring3", price: 65)]
