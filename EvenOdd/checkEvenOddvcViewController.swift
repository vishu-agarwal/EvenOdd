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
        // comment
        
        txt.textColor = .blue
        
        return txt
    }()

    //create a button for check
    private let chk :UIButton = {
        let btn = UIButton()
        btn.setTitle("CHECK", for: .normal)
        btn.addTarget(self, action: #selector(chkEO), for: .touchUpInside)
        btn.backgroundColor = .black
        btn.layer.cornerRadius = 15
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
        //call anothe vc that display result
        let vc = ResultVC()
        if num % 2 == 0{
            //result is variable at result vc
            vc.result =   "\(num) Is EVEN Number."
        }
        else{
            vc.result =  "\(num) Is ODD Number."
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "EVEN-ODD"
        view.backgroundColor = .lightGray
        view.addSubview(txtNo)
        view.addSubview(chk)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        txtNo.frame = CGRect(x:40,y: (view.height/2) - 50,width: view.width  - 80,height: 60)
        chk.frame = CGRect(x: 40,y: txtNo.bottom+20,width: view.width - 80, height: 60)
        
    }
}

