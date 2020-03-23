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
    var foodNameItems:[String]
    var foodImageItems:[UIImage]
    
    init(foodNameItems:[String],foodImageItems:[UIImage]) {
        self.foodNameItems = foodNameItems
        self.foodImageItems = foodImageItems
    }
}

class MenuSingleton : NSObject{
    var menu = MENU(foodNameItems:[String](),foodImageItems: [UIImage]())

    static let shredInstance:MenuSingleton = MenuSingleton()
    private override init(){}
    
    func setFoodName(name:String){
        menu.foodNameItems.append(name)
    }
    
    func setFoodImage(foodImage:UIImage){
        menu.foodImageItems.append(foodImage)
    }
    
    func getFoodNameItems() -> [String]{
        return menu.foodNameItems
    }
    
    func getFoodImageItems() -> [UIImage]{
        return menu.foodImageItems
    }
    
    func deleteFoodName(row:Int){
        menu.foodNameItems.remove(at: row)
    }
    
    func deleteFoodImage(row:Int){
        menu.foodImageItems.remove(at: row)
    }
}
