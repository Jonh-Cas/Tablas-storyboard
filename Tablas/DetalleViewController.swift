//
//  DetalleViewController.swift
//  Tablas
//
//  Created by Jonathan Casillas on 26/07/23.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var email: UILabel!
    
    var datosLista: Lista?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nombre.text = datosLista?.nombre
        email.text = datosLista?.email
    }
    

}
