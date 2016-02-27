//
//  CustomCellBackground.swift
//  CollectionViewSimple
//
//  Created by DanielChang on 2016/2/27.
//  Copyright © 2016年 DanielChang. All rights reserved.
//

import UIKit

class CustomCellBackground: UIView {
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let aRef = UIGraphicsGetCurrentContext()
        CGContextSaveGState(aRef)
        let bezierPath = UIBezierPath(roundedRect: rect, cornerRadius: 5.0)
        bezierPath.lineWidth = 5.0
        UIColor.blackColor().setStroke()
        let fillColor = UIColor(red: 0.529, green: 0.808, blue: 0.922, alpha: 1)
        fillColor.setFill()
        bezierPath.stroke()
        bezierPath.fill()
        CGContextRestoreGState(aRef)
    }

}
