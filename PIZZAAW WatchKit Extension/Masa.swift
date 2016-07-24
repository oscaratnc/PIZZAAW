//
//  Masa.swift
//  PIZZAAW
//
//  Created by Oscar Atanacio on 24/07/16.
//  Copyright © 2016 Oscar Atanacio. All rights reserved.
//

import WatchKit
import Foundation


class Masa: WKInterfaceController {
        var tipodeMasa:String=""
        var tamanodePizza:String=""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        // Configure interface objects here.
        let paso1=context as! PizzaTotal
        tamanodePizza=paso1.tamanoPizza
           }
    @IBAction func Crujiente() {
        tipodeMasa="Crujiente"
        
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa:tipodeMasa, Queso: "", ingredient: ["","","","",""])
        pushControllerWithName("IdentificadorQueso", context: pizzaContexto)
        
    }
    @IBAction func Delgada() {
        tipodeMasa="Delgada"
        
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa:tipodeMasa, Queso: "", ingredient: ["","","","",""])
        pushControllerWithName("IdentificadorQueso", context: pizzaContexto)
    }

    @IBAction func Gruesa() {
        tipodeMasa="Gruesa"
        
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa:tipodeMasa, Queso: "", ingredient: ["","","","",""])
        pushControllerWithName("IdentificadorQueso", context: pizzaContexto)
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
