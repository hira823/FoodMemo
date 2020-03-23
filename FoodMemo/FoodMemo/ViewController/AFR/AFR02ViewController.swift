//
//  AFR02ViewController.swift
//  残量編集画面

import UIKit

class AFR02ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var foodImageView: UIImageView!
    
    // 前画面から渡された食料名
    var foodText : String?
    
    // 前画面から渡された食料画像名
    var foodImage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = foodText
        foodImageView.image = UIImage(named: foodImage!)
        
    }
    
    // 完了ボタン押下時処理
    @IBAction func finishTapped(_ sender: Any) {
        // MENU用インスタンスに保存
        let menuSingleton : MenuSingleton = MenuSingleton.shredInstance
        menuSingleton.setFoodName(name: self.foodText ?? "")
        menuSingleton.setFoodImage(foodImage: UIImage(named: foodImage!)!)
        
        // MENUのStoryboard取得
        let nextStoryboard : UIStoryboard = UIStoryboard(name: "MENU", bundle: nil)
        
        // NavigationControllerの取得
        let nextNC : UINavigationController = nextStoryboard.instantiateViewController(withIdentifier: "NAVI") as! UINavigationController
        
        // 遷移アニメーションの指定
        nextNC.modalPresentationStyle = .fullScreen
        
        // MENU01ViewControllerに遷移
        self.present(nextNC, animated: true, completion: nil)

    }
}
