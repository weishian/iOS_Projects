//
//  Cell.swift
//  CollectionViewSimple
//
//  Created by DanielChang on 2016/2/27.
//  Copyright © 2016年 DanielChang. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
    @IBOutlet var image: UIImageView!
    @IBOutlet var label: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let backgroundView: CustomCellBackground = CustomCellBackground()
        self.selectedBackgroundView = backgroundView
    }
}
