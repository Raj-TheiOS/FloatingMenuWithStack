//
//  ViewController.swift
//  FloatingMenuWithStack
//
//  Created by K Rajeshwar on 20/04/23.
//

import UIKit

class ViewController: UIViewController {

    // Create main container, with the main button image
    private let container = FABView(buttonImage: UIImage(named: "shared"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Set FABButton delegate
        container.delegate = self
        // Add secondary buttons
        container.addSecondaryButtonWith(image: UIImage(named: "twitter")!, labelTitle: "Twitter", action: {
            print("Twitter")
        })
        container.addSecondaryButtonWith(image: UIImage(named: "linkedin")!, labelTitle: "Linkedin", action: {
            print("Linkedin")
        })
        container.addSecondaryButtonWith(image: UIImage(named: "instagram")!, labelTitle: "Instagram", action: {
            print("Instagram")
        })
        container.addSecondaryButtonWith(image: UIImage(named: "facebook")!, labelTitle: "Facebook", action: {
            print("Facebook")
        })
        container.setFABButton()

    }
    

    private func configure() {
        view.backgroundColor = .lightGray
        view.addSubview(container)
        NSLayoutConstraint.activate([
            container.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            container.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40)
        ])
    }
}

// Add FABSecondaryButtonDelegate delegate methods
extension ViewController: FABSecondaryButtonDelegate {
    func secondaryActionForButton(_ action: @escaping () -> ()) {
        action()
    }
    
    
}
