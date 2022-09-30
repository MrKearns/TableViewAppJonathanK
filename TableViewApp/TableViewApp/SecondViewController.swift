//
//  SecondViewController.swift
//  TableViewApp
//
//  Created by Jonathan Kearns on 9/27/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bakerName: UILabel!
    
    @IBOutlet weak var bakerBio: UILabel!
    
    @IBOutlet weak var bakerImage: UIImageView!
    
    
    var name = String()
    var bio = String()
    var image:UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bakerName.text = name.uppercased()
        bakerBio.text = bio
        bakerImage.image = image
        bakerImage.layer.cornerRadius = 20
        bakerImage.layer.masksToBounds = true

  
    }


     


}
