//
//  FollowerListVCViewController.swift
//  GHFollowers
//
//  Created by Babak Kiaie on 3/30/22.
//

import UIKit

class FollowerListVCViewController: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true

        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            
            
            switch result {
            case .success(let followers):
                print(followers)
                print("Followers.count = \(followers.count)")
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "No followers", message: error.rawValue, buttonTitle: "OK")
            }
        }
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
    }

}
