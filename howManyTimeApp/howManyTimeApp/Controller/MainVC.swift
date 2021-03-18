//
//  MainVC.swift
//  howManyTimeApp
//
//  Created by Choi Joon on 2021/03/18.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var myImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //배경 흐림효과
        let blurEffect = UIBlurEffect(style: .dark)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.frame = self.view.frame
        self.myImg.addSubview(visualEffectView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
