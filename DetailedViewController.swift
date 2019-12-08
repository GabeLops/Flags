//
//  DetailedViewController.swift
//  Project4
//
//  Created by Gabriel Lops on 11/28/19.
//  Copyright © 2019 Gabriel Lops. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
   override func viewDidLoad() {
        super.viewDidLoad()
    
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    
        let imageToLoad = selectedImage!
        imageView.image = UIImage(named: imageToLoad)
        
   
       
    }
    
    @objc func shareTapped() {
        
         let share = UIActivityViewController(activityItems: ["Recommend this to friends"], applicationActivities: [])
                  share.popoverPresentationController?.barButtonItem =
                  navigationItem.rightBarButtonItem
                  present(share, animated: true)
              }
        
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           navigationController?.hidesBarsOnTap = true
       }
    override func viewWillDisappear(_ animated: Bool) {
           super.viewWillDisappear(animated)
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
