//
//  ViewController.swift
//  scrollproject
//
//  Created by Mabel on 17/01/21.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate{

    @IBOutlet weak var lblLorem: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let medium = scrollView.contentSize.height/2
        if  scrollView.contentOffset.y >= medium{lblLorem.textColor = .red} else {lblLorem.textColor = .black}
    }


}

