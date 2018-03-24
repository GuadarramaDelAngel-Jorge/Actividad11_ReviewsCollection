//
//  ViewController.swift
//  Actividad11_ReviewsCollection
//
//  Created by Jorge Guadarrama on 23/3/18.
//  Copyright © 2017 Alumno IDS. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // Definiendo los nombres
    let myPlaces = ["biblioteca el sol", "enchiladas la morenita", "italiannis", "las tortas de don juan", "licuados la rosa", "oxxo tabachines", "selva magica", "tacos el compa", "tacos la rioja", "tecmizap"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // Crear los 10 items iguales
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myPlaces.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Crea un objeto item, que hemos llamado cell, de tipo PlacesCollectionViewCell, al que se le asigna el identificador “Item”
        let identifier = "Item"
        
        // Definiendo el contenido para otro view
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! PlacesCollectionViewCell
        
        cell.itemLabel.text = myPlaces[indexPath.row]
        cell.itemImage.image = UIImage.init(imageLiteralResourceName: myPlaces[indexPath.row])
        
        return cell
    }
    
    // Segue en Storyboard + Codigo
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let item = sender as? UICollectionViewCell
        let indexPath = collectionView.indexPath(for: item!)
        let detailVC = segue.destination as! DetailViewController
        detailVC.detailName = myPlaces[(indexPath?.row)!]
    }
    

}

