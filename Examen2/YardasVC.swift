//
//  YardasVC.swift
//  Examen2
//
//  Created by Jeferson Bujaico on 5/7/19.
//  Copyright © 2019 JeffRay. All rights reserved.
//

import UIKit

class YardasVC: UIViewController {

    @IBOutlet weak var txtMillasY: UITextField!
    @IBOutlet weak var txtKilometrosY: UITextField!
    @IBOutlet weak var lblValor: UILabel!
    @IBOutlet weak var lblDetalle: UILabel!
    //  MARK: - Variables Constante Declaradas
    let valorMY:Double = 1760
    let valorKY:Double = 1093.61
    let lblMY:String = "Convertido de Millas a Yardas:"
    let lblKY:String = "Convertido de Kilometros a Yardas:"
    
    
    //  MARK: - Variables declaradas
    var MillasY:String = ""
    var KilometrosY:String = ""
    var nMillasY:Double = 0.0
    var nKilometrosY:Double = 0.0
    
    var ValorFY:String = ""
    var ConvertMY:Double = 0.0
    var ConvertKY:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnMillasY(_ sender: Any) {
        //        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        //        let conv = ConMYK(context: context)
        
        //Convertir el texto en double
        MillasY = txtMillasY.text!
        nMillasY = Double(MillasY)!
        
        //  Realizando la Operacion
        ConvertMY = nMillasY * valorMY
        
        //  Agregando Valores al CoreData
        //        conv.tipo = lblYM
        //        conv.valorYM = ConvertYM
        
        ValorFY = String(ConvertMY)
        
        lblDetalle.text = lblMY
        lblValor.text = ValorFY
        
        
        //        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        //        navigationController!.popViewController(animated: true)
        
    }
    
    @IBAction func btnKilometroY(_ sender: Any) {
        //        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        //        let conv = ConMYK(context: context)
        
        //Convertir el texto en double
        KilometrosY = txtKilometrosY.text!
        nKilometrosY = Double(KilometrosY)!
        
        //  Realizando la Operacion
        ConvertKY = nKilometrosY * valorKY
        
        ValorFY = String(ConvertKY)
        
        lblDetalle.text = lblKY
        lblValor.text = ValorFY
        
        //  Agregando Valores al CoreData
        //        conv.tipo = lblKM
        //        conv.valorKM = ConvertKM
        //
        //
        //        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        //
        //
        //        navigationController!.popViewController(animated: true)
        
        
    }
    
}
