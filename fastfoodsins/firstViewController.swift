//
//  firstViewController.swift
//  fastfoodsins
//
//  Created by Катя Смолякова on 5/5/18.
//  Copyright © 2018 Катя Смолякова. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {

    @IBAction func startNoeButton(_ sender: UIButton) {
        
        print("ok")
        self.performSegue(withIdentifier: "foodViewSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
