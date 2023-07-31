//
//  ViewController.swift
//  Tablas
//
//  Created by Jonathan Casillas on 26/07/23.
//

import UIKit

struct Lista {
    let nombre: String
    let email : String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTable: UITableView!
    
    var lista = [Lista]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTable.delegate = self
        myTable.dataSource = self
        
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        let list = lista[indexPath.row]
        cell.textLabel?.text = list.nombre
        cell.detailTextLabel?.text = list.email
        cell.imageView?.image = UIImage(systemName: "person.crop.circle.fill")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "enviar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar" {
            if let id = myTable.indexPathForSelectedRow {
                let fila = lista[id.row]
                let destino = segue.destination as? DetalleViewController
                destino?.datosLista = fila
            }
        }
    }

}

