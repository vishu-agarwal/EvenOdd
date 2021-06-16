//
//  ResultVC.swift
//  EvenOdd
//
//  Created by DCS on 15/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    var result = ""//variable for print result
    private let lbl:UILabel = {
        let label = UILabel()
        label.text = ""
        
        label.textAlignment   = .center
        label.backgroundColor  = .lightGray
        label.textColor = .black
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "RESULT"
        view.backgroundColor = .white
        view.addSubview(lbl)
        lbl.text = result

        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lbl.frame = CGRect(x: 40,y: (view.height/2) - 30,width: view.width - 80,height: 60)
    }
    


}
