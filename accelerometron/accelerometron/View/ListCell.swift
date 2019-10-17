//
//  ListCell.swift
//  accelerometron
//
//  Created by MOHAMED on 10/14/19.
//  Copyright © 2019 MOHAMED. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupParallex()
    }
    
    
    
    @IBOutlet weak var listImage: UIImageView!
    @IBOutlet weak var listLabel: UILabel!
    
    func updateView(List:List)
    {
        listImage.image = UIImage(named: List.image)
        listLabel.text = List.Label
    }
    
    
    
    //for parrelex motion
    func setupParallex()
    {
        var min = CGFloat(-30)
        var max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.maximumRelativeValue = max
        xMotion.minimumRelativeValue = min
        
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform,translation.y", type:.tiltAlongVerticalAxis)
        yMotion.maximumRelativeValue = max
        yMotion.minimumRelativeValue = min
        
        let motionGroup = UIMotionEffectGroup()
        motionGroup.motionEffects=[xMotion,yMotion]
        
        listImage.addMotionEffect(motionGroup)
        
    }
    
    
}
