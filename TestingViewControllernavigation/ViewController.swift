//
//  ViewController.swift
//  TestingViewControllernavigation
//
//  Created by Lera Savchenko on 2.10.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextViewButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextViewButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    

}

