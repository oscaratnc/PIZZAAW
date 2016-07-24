//
//  Tamanos.swift
//  PIZZAAW
//
//  Created by Oscar Atanacio on 24/07/16.
//  Copyright © 2016 Oscar Atanacio. All rights reserved.
//

import WatchKit
import Foundation


class Tamanos: WKInterfaceController {
    var tamanodePizza:String = ""
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
       
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func PizzaChica() {
        tamanodePizza="Chica"
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa: "", Queso: "", ingredient: ["","","","",""])
        pushControllerWithName("IdentificadorMasa", context: pizzaContexto)
    }
    @IBAction func PizzaMediana() {
        tamanodePizza="Mediana"
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa: "", Queso: "", ingredient: ["","","","",""])
        pushControllerWithName("IdentificadorMasa", context: pizzaContexto)
    }
    @IBAction func PizzaGrande() {
        tamanodePizza="Grande"
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa: "", Queso: "", ingredient: ["","","","",""])
        pushControllerWithName("IdentificadorMasa", context: pizzaContexto)
    }
    
}
