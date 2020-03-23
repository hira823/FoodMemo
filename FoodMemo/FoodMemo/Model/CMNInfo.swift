//
//  CMNInfo.swift
//  FoodMemo
//
//  Created by 平島峻成 on 2020/03/23.
//  Copyright © 2020 平島峻成. All rights reserved.
//

import Foundation
import  UIKit

public final class MENU{
    var name:[String]
    var foodImage:UIImage
    
    init(name:[String],foodImage:UIImage) {
        self.name = name
        self.foodImage = foodImage
    }
}

class MenuSingleton : NSObject{
    var menu = MENU(name:[String](),foodImage: UIImage())
    static let shredInstance:MenuSingleton = MenuSingleton()
    private override init(){}
    
    func setName(name:String){
        menu.name.append(name)
    }
    
    func setImageName(foodImage:UIImage){
        menu.foodImage = foodImage
    }
    
    func getName() -> [String]{
        return menu.name
    }
    
    func getImageName() -> UIImage{
        return menu.foodImage
    }
    
    func deleteName(row:Int){
        menu.name.remove(at: row)
    }
}
