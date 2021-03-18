//
//  cUITF.swift
//  howManyTimeApp
//
//  Created by Choi Joon on 2021/03/18.
//

import UIKit

class cUITF: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2)
        layer.cornerRadius = 10.0
        textAlignment = .center
        
        if let hasPH = placeholder{
            let attributes: [NSAttributedString.Key : Any] = [.foregroundColor: UIColor.white]
            let place = NSAttributedString(string: hasPH, attributes: attributes)
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
