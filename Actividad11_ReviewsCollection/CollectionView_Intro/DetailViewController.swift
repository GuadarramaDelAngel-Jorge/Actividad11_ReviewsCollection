//
//  DetailViewController.swift
//  Actividad11_ReviewsCollection
//
//  Created by Jorge Guadarrama on 23/3/18.
//  Copyright © 2017 Alumno IDS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // Cargando la imagen con la que se ve el Storyboard
    @IBOutlet weak var detailImage: UIImageView!
    var detailName: String?

    // Segue exitoso
    override func viewDidLoad() {
        super.viewDidLoad()

        title = detailName
        detailImage.image = UIImage.init(named: detailName!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
