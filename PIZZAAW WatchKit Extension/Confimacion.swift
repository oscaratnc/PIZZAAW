//
//  Confimacion.swift
//  PIZZAAW
//
//  Created by Oscar Atanacio on 24/07/16.
//  Copyright © 2016 Oscar Atanacio. All rights reserved.
//

import WatchKit
import Foundation


class Confimacion: WKInterfaceController {
    var tipodeMasa:String=""
    var tamanodePizza:String=""
    var TipodeQueso:String=""
    var IngredientesP:[String]=["","","","",""]

    @IBOutlet var Tamano: WKInterfaceLabel!
    
    @IBOutlet var Masa: WKInterfaceLabel!
    @IBOutlet var Queso: WKInterfaceLabel!
    @IBOutlet var Ingredientes: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        // Configure interface objects here.
        let paso4=context as! PizzaTotal
        tamanodePizza=paso4.tamanoPizza
        tipodeMasa=paso4.TipodeMasa
        TipodeQueso=paso4.TipodeQueso
        IngredientesP=paso4.Ingredientes
        let ingrediente1=IngredientesP[0]
        let ingrediente2=IngredientesP[1]
        let ingrediente3=IngredientesP[2]
        let ingrediente4=IngredientesP[3]
        let ingrediente5=IngredientesP[4]
        
        
        Tamano.setText(tamanodePizza)
        Masa.setText(tipodeMasa)
        Queso.setText(TipodeQueso)
        Ingredientes.setText("\(ingrediente1),\(ingrediente2),\(ingrediente3),\(ingrediente4),\(ingrediente5)")
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
