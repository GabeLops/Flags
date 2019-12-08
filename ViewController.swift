//
//  ViewController.swift
//  Project4
//
//  Created by Gabriel Lops on 11/28/19.
//  Copyright © 2019 Gabriel Lops. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var flagfromFile = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Flags of the World"
        navigationController?.navigationBar.prefersLargeTitles = true

        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix("3x.png") {
                flagfromFile.append(item.uppercased())
            }
        }
        
        
        
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flagfromFile.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath)
        cell.textLabel?.text = flagfromFile.sorted()[indexPath.row]
        return cell

    }
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailedViewController {
                vc.selectedImage = flagfromFile[indexPath.row]
                navigationController?.pushViewController(vc, animated: true)
              }
    }
    
   /* func UIActivityViewController() {
        
    }
    
    */
    


}

