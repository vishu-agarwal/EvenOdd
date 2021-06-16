//
//  ViewController.swift
//  EvenOdd
//
//  Created by DCS on 14/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //step 1 to crete ui element
    //here create 1st window
    //button to enter into aaplication
    private let EvenOdd:UIButton = {
        let button = UIButton()
        button.setTitle("WELCOME!", for: .normal)
        button.addTarget(self, action: #selector(handleEvent), for: .touchUpInside)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        return button
        
    }()
    //function call when click on button which is target
    @objc private func handleEvent(){
        
        //go to another view controler by click on button
        let vc = checkEvenOddvcViewController()
        navigationController?.pushViewController(vc,animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //step 2 add button as a vieew inside subview
        view.addSubview(EvenOdd)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //step3 give frame to ui elements
        EvenOdd.frame = CGRect(x: 40, y: (view.height / 2) - 30, width:view.width - 80, height: 60)
    }
}
