//
//  AnimationVC.swift
//  scrollproject
//
//  Created by Mabel on 17/01/21.
//

import UIKit

class AnimationVC: UIViewController {
    @IBOutlet weak var viewRed: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(startAnimation), userInfo: nil, repeats: false)
    
        // Do any additional setup after loading the view.
    }
    @objc func startAnimation(){
        //Animacion de escala
//        UIView.animate(withDuration: 2 , delay: 0, options: [.autoreverse,.repeat]) {
//            self.viewRed.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
//        } completion: { (_) in
//        }
        // Animacion de Traslacion
//        UIView.animate(withDuration: 0.35, delay: 1) {
//            self.viewRed.transform = CGAffineTransform(translationX: 0, y: 0)
//        } completion: { (_) in
//        }
        UIView.animate(withDuration: 0, delay: 1, options: [.repeat ]) {
            self.viewRed.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
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
