//
//  ViewController.swift
//  FoodMemo
//
//  Created by 平島峻成 on 2020/03/18.
//  Copyright © 2020 平島峻成. All rights reserved.
//

import UIKit

class MENU01ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var foodItems:[String] = []
    var foodText:String?
    
    @IBOutlet weak var foodTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodItems.append(foodText ?? "")
        
        // 各種delegateの設定.
        foodTable.dataSource = self
        foodTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cellを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCellMENU", for: indexPath)

        // cellに配列の中身を入れる
        cell.textLabel!.text = "\(foodItems[indexPath.row])"
        
        return cell
    }
}

