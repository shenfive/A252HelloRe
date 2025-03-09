//
//  ViewController.swift
//  A252HelloRe
//
//  Created by DannyShen on 2025/3/9.
//

import UIKit



class ViewController: UIViewController {
 
    @IBOutlet weak var theIndicator: UIActivityIndicatorView!
    var timer:Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: { _ in
            self.getNetWorkStatus()
        })
    }

    func getNetWorkStatus(){
        if Reachability(hostName: "www.apple.com")?
            .currentReachabilityStatus().rawValue == 0 {
            theIndicator.startAnimating()
        }else{
            theIndicator.stopAnimating()
        }
    }

}

