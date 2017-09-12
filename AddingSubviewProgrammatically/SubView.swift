//
//  SubView.swift
//  AddingSubviewProgrammatically
//
//  Created by Eric Dockery on 8/8/17.
//  Copyright © 2017 Eric Dockery. All rights reserved.
//

import UIKit

enum randomStrings: String {
    case firstString = "This is a smaller string"
    case secondString = "This is a longer string that would provide more details to the user and take up a medium amount of space."
    case thirdString = "This is the longest test that we are going to preform, this will take up a good portion of our view and it will be the largest of our test views. Hopefully this will be enough to show how the views dynamically change."
}

class SubView: UIView {
    @IBOutlet private weak var view: SubView!
    @IBOutlet private weak var textForView: UILabel!

    required init(with randomString: String) {
        super.init(frame: CGRect(x: 200, y: 200, width: 200, height: 200))
        commonInit()
        textForView.text = randomString
        textForView.backgroundColor = .blue
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed("SubView", owner: self, options: nil)
        view.frame = bounds
        addSubview(view)
        layer.cornerRadius = 2
        clipsToBounds = true
        view.layer.shadowOffset = CGSize(width: 0, height: 3)
        view.layer.shadowRadius = 4
        view.layer.shadowOpacity = 0.5
        view.layer.cornerRadius = 2
        layer.masksToBounds = false

    }


}
