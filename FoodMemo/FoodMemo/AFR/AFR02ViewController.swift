//
//  AFR02ViewController.swift
//  FoodMemo
//
//  Created by 平島峻成 on 2020/03/21.
//  Copyright © 2020 平島峻成. All rights reserved.
//

import UIKit

class AFR02ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    var foodText : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = foodText

        // Do any additional setup after loading the view.
    }
    
}
