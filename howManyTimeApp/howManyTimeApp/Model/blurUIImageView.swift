//
//  blurUIImageView.swift
//  howManyTimeApp
//
//  Created by Choi Joon on 2021/03/18.
//

import UIKit

class blurUIImageView: UIImageView {
    let blurEffect = UIBlurEffect(style: .light)
    let blurEffectView = UIVisualEffectView(effect: UIBlurEffect)
    blurEffectView.frame = self.bounds
    blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(blurEffectView)
}
