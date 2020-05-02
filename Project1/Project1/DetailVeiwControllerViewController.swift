//
//  DetailVeiwControllerViewController.swift
//  Project1
//
//  Created by 1 on 2020/04/28.
//  Copyright © 2020 wook. All rights reserved.
//

import UIKit

class DetailVeiwControllerViewController: UIViewController {

    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    var selectedPictureNumber = 0
    var totalPicture = 0
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture \(selectedPictureNumber) of \(totalPicture)"
        navigationItem.largeTitleDisplayMode = .never
        
        
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
          }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = false
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
