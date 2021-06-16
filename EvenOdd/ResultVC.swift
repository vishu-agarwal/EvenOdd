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
        label.backgroundColor  = .blue
        label.textColor = .white
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(lbl)
        lbl.text = result

        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lbl.frame = CGRect(x: 40,y: (view.height/2) - 30,width: view.width - 80,height: 60)
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
