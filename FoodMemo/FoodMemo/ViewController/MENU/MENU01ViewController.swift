//
//  ViewController.swift
//  FoodMemo
//
//  Created by 平島峻成 on 2020/03/18.
//  Copyright © 2020 平島峻成. All rights reserved.
//

import UIKit

class MENU01ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    // MENU用シングルトン
    let menuSingleton:MenuSingleton = MenuSingleton.shredInstance
    
    @IBOutlet weak var foodTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 各種delegateの設定.
        foodTable.dataSource = self
        foodTable.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuSingleton.getName().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cellを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCellMENU", for: indexPath)

        // cellに配列の中身を入れる
        cell.textLabel!.text = "\(menuSingleton.getName()[indexPath.row])"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            menuSingleton.deleteName(row: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}

