//
//  NewViewController.swift
//  Test5
//
//  Created by sun on 2018/12/16.
//  Copyright © 2018 孙建伟. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    let lab:UILabel = UILabel.init();
    override func viewDidLoad() {
        super.viewDidLoad()
   
        
        
        self.lab.frame = CGRect.init(x: 100, y: 480, width: 100, height: 50);
        self.lab.backgroundColor = UIColor.green;
        self.lab.textColor = UIColor.red;
       
        
        
        let btn:UIButton = UIButton.init(frame: CGRect.init(x: 100, y: 550, width: 150, height: 30));
        btn.backgroundColor = UIColor.lightGray;
        btn.setTitle("点击我", for: .normal);
        btn.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        //将label和button加入根view中
        self.view.addSubview(self.lab);
        self.view.addSubview(btn);
       
        
        
        let imageView:UIImageView = UIImageView.init(frame: CGRect.init(x: 10, y: 130, width: 200, height: 50));
        imageView.image = UIImage.init(named: "img");
        self.view.addSubview(imageView);
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func tapped() {
        self.lab.text = "Hello World!";
        
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
