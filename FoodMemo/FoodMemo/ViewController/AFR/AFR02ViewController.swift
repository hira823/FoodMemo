//
//  AFR02ViewController.swift
//  残量編集画面

import UIKit

class AFR02ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    var foodText : String?
    var foodImage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = foodText
        foodImageView.image = UIImage(named: foodImage!)
    }
    
    // 完了ボタン押下時処理
    @IBAction func finishTapped(_ sender: Any) {
        // MENUのStoryboard取得
        let nextStoryboard : UIStoryboard = UIStoryboard(name: "MENU", bundle: nil)
        
        // NavigationControllerの取得
        let nextNC : UINavigationController = nextStoryboard.instantiateViewController(withIdentifier: "NAVI") as! UINavigationController
        
        // 遷移先ViewCntrollerの取得
        let nextVC = nextNC.topViewController as! MENU01ViewController

        // 値を入れる
        nextVC.foodItems.append(self.foodText ?? "")
        
        // 遷移アニメーションの指定
        nextNC.modalPresentationStyle = .fullScreen
        
        // MENU01ViewControllerに遷移
        self.present(nextNC, animated: true, completion: nil)

    }
}
