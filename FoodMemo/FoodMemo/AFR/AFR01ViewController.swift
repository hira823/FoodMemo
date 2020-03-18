//
//  AFR01ViewController.swift
//  食材選択画面


import UIKit

class AFR01ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let foodItems : NSArray = ["ケチャップ","マヨネーズ","醤油"]

    @IBOutlet weak var foodTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 各種delegateの設定.
        foodTable.dataSource = self
        foodTable.delegate = self
        
    }
    
    // cell選択時の動作
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(foodItems[indexPath.row])")
    }
    
    // cellの総数の設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItems.count
    }
    
    // cellに値を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // cellを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        // cellに配列の中身を入れる
        cell.textLabel!.text = "\(foodItems[indexPath.row])"
        
        return cell
    }
    
}
