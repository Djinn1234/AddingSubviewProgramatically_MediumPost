//
//  ViewController.swift
//  AddingSubviewProgrammatically
//
//  Created by Eric Dockery on 8/8/17.
//  Copyright © 2017 Eric Dockery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let mySubView = SubView(with: randomStrings.thirdString.rawValue)
        view.addSubview(mySubView)
        mySubView.translatesAutoresizingMaskIntoConstraints = false
        mySubView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        mySubView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
       mySubView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        view.setNeedsUpdateConstraints()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

