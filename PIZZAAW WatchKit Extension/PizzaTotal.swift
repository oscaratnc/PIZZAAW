//
//  PizzaTotal.swift
//  PIZZAAW
//
//  Created by Oscar Atanacio on 24/07/16.
//  Copyright © 2016 Oscar Atanacio. All rights reserved.
//

import WatchKit

class PizzaTotal: NSObject {
    var tamanoPizza:String=""
    var TipodeMasa:String=""
    var TipodeQueso:String=""
    var Ingredientes:[String]=["","","","",""]
    
    init(tamano:String,Masa:String,Queso:String,ingredient:[String]) {
        tamanoPizza=tamano
        TipodeMasa=Masa
        TipodeQueso=Queso
        Ingredientes=ingredient
    }
    
}
