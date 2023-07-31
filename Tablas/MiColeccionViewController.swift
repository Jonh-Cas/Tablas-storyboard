//
//  MiColeccionViewController.swift
//  Tablas
//
//  Created by Jonathan Casillas on 27/07/23.
//

import UIKit

class MiColeccionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var coleccion: UICollectionView!
    
    var lista = [Lista]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        coleccion.delegate = self
        coleccion.dataSource = self
        
        let lista1 = Lista(nombre: "Jonathan", email: "jonathan.email@gmail.com")
        let lista2 = Lista(nombre: "Pedro", email: "jonathan.email@gmail.com")
        let lista3 = Lista(nombre: "Jorge", email: "jonathan.email@gmail.com")
        let lista4 = Lista(nombre: "Daniela", email: "jonathan.email@gmail.com")
        let lista5 = Lista(nombre: "Leticia", email: "jonathan.email@gmail.com")
        let lista6 = Lista(nombre: "Ruben", email: "jonathan.email@gmail.com")
        let lista7 = Lista(nombre: "Jacobo", email: "jonathan.email@gmail.com")
        
        lista.append(lista1)
        lista.append(lista2)
        lista.append(lista3)
        lista.append(lista4)
        lista.append(lista5)
        lista.append(lista6)
        lista.append(lista7)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
