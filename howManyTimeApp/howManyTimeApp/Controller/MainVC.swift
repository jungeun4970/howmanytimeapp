//
//  MainVC.swift
//  howManyTimeApp
//
//  Created by Choi Joon on 2021/03/18.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var priceLabel: cUITF!
    @IBOutlet weak var wageLabel: cUITF!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var siganLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //배경 흐림효과
        let blurEffect = UIBlurEffect(style: .dark)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.frame = self.view.frame
        self.myImg.addSubview(visualEffectView)
        
        //이미지 클릭시 키보드 내려가도록 설정
        myImg.isUserInteractionEnabled = true
        let imageGesture = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        myImg.addGestureRecognizer(imageGesture)
        
        //초기에는 시간 레이블들이 보이지 않게 설정
        hourLabel.isHidden = true
        siganLabel.isHidden = true
        
        //버튼 생성
        let CalculateBtn = UIButton(frame: CGRect(x:0, y: 0, width: view.frame.width, height: 60))
        CalculateBtn.backgroundColor = .orange
        CalculateBtn.setTitle("계산하기", for: .normal)
        CalculateBtn.setTitleColor(.black, for: .normal)
        
        //버튼 클릭시 함수 실행
        CalculateBtn.addTarget(self, action: #selector(calculateTwoNum), for: .touchUpInside)
        
        //텍스트 레이블 클릭시 키보드와 함께 버튼 출력
        priceLabel.inputAccessoryView = CalculateBtn
        wageLabel.inputAccessoryView = CalculateBtn
        
        
        
        
        
        
    }
    func getHours(forWage wage : Double, andPrice price : Double) -> Int{
        
        //ceil 올림함수 round 내림함수
        return Int(ceil(price/wage))
    }
    @objc func closeKeyboard(){
        view.endEditing(true)
    }
    
    @objc func calculateTwoNum(){
        if let hasfirstLabel = priceLabel.text, let hasSecondLabel = wageLabel.text{
            if let price = Double(hasfirstLabel), let wage = Double(hasSecondLabel){
                view.endEditing(true)
                hourLabel.isHidden = false
                siganLabel.isHidden = false
                hourLabel.text = "\(getHours(forWage :wage, andPrice : price))"
                
                
            }
        }
        
    }
    
    @IBAction func reset(_ sender: Any) {
        priceLabel.text = ""
        wageLabel.text = ""
        hourLabel.isHidden = true
        siganLabel.isHidden = true
    }
    
    

}
