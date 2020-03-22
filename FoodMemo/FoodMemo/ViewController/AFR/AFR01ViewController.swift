//
//  AFR01ViewController.swift
//  食材選択画面


import UIKit

class AFR01ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // private let foodItems : NSArray = ["ケチャップ","マヨネーズ","醤油"]
    private var foodSelected : String = ""

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
        print("Value: \(foodData[indexPath.row])")
        
        // AFR02へ渡す文字列の設定
        foodSelected = foodData[indexPath.row].name
        
        // AFR02へ遷移するSegueの呼び出し
        performSegue(withIdentifier: "showAFR02", sender: nil)
    }
    
    // cellの総数の設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodData.count
    }
    
    // cellに値を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // cellを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        // cellに配列の中身を入れる
        cell.textLabel!.text = "\(foodData[indexPath.row].name)"
        
        return cell
    }
    
    // Segue実行前の処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showAFR02"){
            let vcAFR02:AFR02ViewController = (segue.destination as? AFR02ViewController)!
            
            vcAFR02.foodText = foodSelected
        }
    
    }
    
}
