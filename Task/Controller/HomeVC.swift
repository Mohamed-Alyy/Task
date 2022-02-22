//
//  FirstVC.swift
//  Task
//
//  Created by Mohamed Ali on 21/02/2022.
//

import UIKit

class HomeVC: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var sideMenuView: UIView!{
        didSet{
            sideMenuView.layer.cornerRadius = sideMenuView.frame.width * 0.075
        }
    }
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
   
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - IBAction
    
    @IBAction func sideMenuBtn(_ sender: UIBarButtonItem) {
        sideMenuAnimate()
    }
    
    
    @IBAction func cartBtnPressed(_ sender: UIButton) {
        if let cartVC = storyboard?.instantiateViewController(withIdentifier: "CartVC"){
            navigationController?.pushViewController(cartVC, animated: true)
            sideMenuAnimate()
        }
    }
    
    
    
    @IBAction func profileBtnPressed(_ sender: UIButton) {
        if let profileVC = storyboard?.instantiateViewController(withIdentifier: "ProfileVC"){
            navigationController?.pushViewController(profileVC, animated: true)
            sideMenuAnimate()
        }
    }
    
    
    // MARK: - Helper Functions
    
    func sideMenuAnimate () {
        UIView.animate(withDuration: 0.8) {
            if self.sideMenuConstraint.constant == 0  {
                self.sideMenuConstraint.constant = self.view.frame.width * 0.4
            }else{
                self.sideMenuConstraint.constant = 0
            }
            self.view.layoutIfNeeded()
        }
    }
}
