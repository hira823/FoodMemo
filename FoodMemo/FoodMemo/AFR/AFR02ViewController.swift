//
//  AFR02ViewController.swift
//  残量編集画面

import UIKit

class AFR02ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    var foodText : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = foodText

        // Do any additional setup after loading the view.
    }
    
    // 完了ボタン押下時処理
    @IBAction func finishTapped(_ sender: Any) {
        // MENUのStoryboard取得
        let nextStoryboard : UIStoryboard = UIStoryboard(name: "MENU", bundle: nil)
        
        // MENU01ViewControllerの取得
        let nextVC = nextStoryboard.instantiateViewController(withIdentifier: "MENU01")
        
        // 遷移アニメーションの指定
        nextVC.modalPresentationStyle = .fullScreen
        
        // MENU01ViewControllerに遷移
        self.present(nextVC, animated: true, completion: nil)

    }
}
