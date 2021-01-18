//
//  CircleVC.swift
//  scrollproject
//
//  Created by Mabel on 17/01/21.
//

import UIKit

class CircleVC: UIViewController {
    
    @IBOutlet weak var circlezero: CircularImageView!
    @IBOutlet weak var circleone: CircularImageView!
    @IBOutlet weak var circletwo: CircularImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(startAnimation), userInfo: nil, repeats: false)
        // Do any additional setup after loading the view.
    }
    @objc func startAnimation () {
        UIView.animate(withDuration: 0.5, delay: 1, options: [.repeat,.autoreverse]) {
            self.circlezero.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            self.circlezero.alpha = 0.3
        } completion: { (_) in

        }
        
        UIView.animate(withDuration: 0.5, delay: 1.3, options: [.repeat,.autoreverse]) {
                self.circletwo.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                self.circletwo.alpha = 0.3
            } completion: { (_) in

            }
        
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
@IBDesignable
class CircularImageView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 2
        self.clipsToBounds = true
    }
}
