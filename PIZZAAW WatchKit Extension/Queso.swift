//
//  Queso.swift
//  PIZZAAW
//
//  Created by Oscar Atanacio on 24/07/16.
//  Copyright © 2016 Oscar Atanacio. All rights reserved.
//

import WatchKit
import Foundation


class Queso: WKInterfaceController {
    var tipodeMasa:String=""
    var tamanodePizza:String=""
    var TipodeQueso:String=""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let paso2=context as! PizzaTotal
        tamanodePizza=paso2.tamanoPizza
        tipodeMasa=paso2.TipodeMasa
    }

    @IBAction func Mozarella() {
        TipodeQueso="Mozarella"
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa:tipodeMasa, Queso: TipodeQueso, ingredient: ["","","","",""])
        pushControllerWithName("IngredientesPizza", context: pizzaContexto)
    }
    @IBAction func Cheddar() {
        TipodeQueso="Cheddar"
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa:tipodeMasa, Queso: TipodeQueso, ingredient: ["","","","",""])
        pushControllerWithName("IngredientesPizza", context: pizzaContexto)
    }
    @IBAction func Parmesano() {
        TipodeQueso="Parmesano"
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa:tipodeMasa, Queso: TipodeQueso, ingredient: ["","","","",""])
        pushControllerWithName("IngredientesPizza", context: pizzaContexto)
    }
    @IBAction func Sinqueso() {
        TipodeQueso="Sin Queso"
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa:tipodeMasa, Queso: TipodeQueso, ingredient: ["","","","",""])
        pushControllerWithName("IngredientesPizza", context: pizzaContexto)
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
