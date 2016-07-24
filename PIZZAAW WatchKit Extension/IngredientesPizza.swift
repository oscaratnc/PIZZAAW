//
//  IngredientesPizza.swift
//  PIZZAAW
//
//  Created by Oscar Atanacio on 24/07/16.
//  Copyright © 2016 Oscar Atanacio. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesPizza: WKInterfaceController {
    var tipodeMasa:String=""
    var tamanodePizza:String=""
    var TipodeQueso:String=""
    var IngredientesP:[String]=["","","","",""]
    var index:Int=0
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let paso3=context as! PizzaTotal
        tamanodePizza=paso3.tamanoPizza
        tipodeMasa=paso3.TipodeMasa
        TipodeQueso=paso3.TipodeQueso
    }

    @IBAction func Piña() {
        if index<IngredientesP.count{
            let IngredienteUnit:String="Piña"
            IngredientesP[index]=IngredienteUnit
        }
        index=index+1
    }
    @IBAction func Salchicha() {
        if index<IngredientesP.count{
            let IngredienteUnit:String="Salchicha"
            IngredientesP[index]=IngredienteUnit
        }
        index=index+1
    }
    @IBAction func Pavo() {
        if index<IngredientesP.count{
            let IngredienteUnit:String="Pavo"
            IngredientesP[index]=IngredienteUnit
        }
        index=index+1

    }
    @IBAction func Pimiento() {
        if index<IngredientesP.count{
            let IngredienteUnit:String="Pimiento"
            IngredientesP[index]=IngredienteUnit
        }
        index=index+1

    }
    @IBAction func Peperoni() {
        if index<IngredientesP.count{
        let IngredienteUnit:String="Peperoni"
        IngredientesP[index]=IngredienteUnit
        }
        index=index+1

    }
    @IBAction func Jamon() {
        if index<IngredientesP.count{
        let IngredienteUnit:String="Jamon"
        IngredientesP[index]=IngredienteUnit
        }
        index=index+1

    }
    @IBAction func Champinones() {
        if index<IngredientesP.count{
            let IngredienteUnit:String="Champiñones"
            IngredientesP[index]=IngredienteUnit
        }
        index=index+1

    }
    @IBAction func Continuar() {
        let pizzaContexto=PizzaTotal(tamano:tamanodePizza, Masa:tipodeMasa, Queso: TipodeQueso, ingredient:IngredientesP)
        pushControllerWithName("Confirmación", context: pizzaContexto)

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
