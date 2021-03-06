//
//  ViewController.swift
//  pbl1
//
//  Created by 冨田悠斗 on 2018/09/26.
//  Copyright © 2018 tommy. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items{
            if item.hasPrefix("nssl"){
                pictures.append(item)
            }
        }
        print(pictures)
        title = "Storm Viewer"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            vc.selectedImage = pictures[indexPath.row]
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    // comment by htakada
    //This is Tommy
    //im joon!!

}

