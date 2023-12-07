//
//  Skeleton.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import UIKit

class SkeletonAnimation {
    func show(on views: [UIView]) {}
    
    func hide(on views: [UIView]) {}
    
    private func recieveEndAnimationState() {
        // recieve info about stop animation
    }
}

class SomeView: SkeletonAnimation {
    
    override func show(on views: [UIView]) {
        // show animation for title or button logic
    }
    
    override func hide(on views: [UIView]) {
        // hide animation for all elements
    }
}
