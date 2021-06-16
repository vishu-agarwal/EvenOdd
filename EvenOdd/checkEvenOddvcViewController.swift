//
//  checkEvenOddvcViewController.swift
//  EvenOdd
//
//  Created by DCS on 14/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class checkEvenOddvcViewController: UIViewController {
    
    var a = ""
    //create a textbox for input
    private let txtNo :UITextField = {
        let txt = UITextField()
        txt.placeholder = "Enter Number"
        txt.textAlignment = .center
        txt.borderStyle = .roundedRect
        txt.backgroundColor = UIColor.white
        
        txt.textColor = .blue
        
        return txt
    }()

    //create a button for check
    private let chk :UIButton = {
        let btn = UIButton()
        btn.setTitle("CHECK", for: .normal)
        btn.addTarget(self, action: #selector(chkEO), for: .touchUpInside)
        btn.backgroundColor = .orange
        btn.layer.cornerRadius = 10
        return btn
    }()
    
    //create menthod for check even odd no
    @objc private func chkEO(){
        guard let num = Int(txtNo.text!) else
        {
            let alert = UIAlertController(title: "ALERT!", message: "Wrong Input !!\n!Please Enter a Number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss",style: .cancel))
            DispatchQueue.main.async {
                self.present(alert,animated: true,completion: nil)
            }
            return
        }
        let vc = ResultVC()
        if num % 2 == 0{
            vc.result =  "You Entered EVEN Number."
        }
        else{
            vc.result =  "You Entered ODD Number."
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(txtNo)
        view.addSubview(chk)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        txtNo.frame = CGRect(x:40,y: (view.height/2) - 50,width: view.width  - 80,height: 60)
        chk.frame = CGRect(x: 40,y: txtNo.bottom+20,width: view.width - 80, height: 60)
        
    }
}

