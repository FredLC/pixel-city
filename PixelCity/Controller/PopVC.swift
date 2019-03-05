//
//  PopVC.swift
//  PixelCity
//
//  Created by Fred Lefevre on 2019-03-05.
//  Copyright © 2019 Fred Lefevre. All rights reserved.
//

import UIKit

class PopVC: UIViewController {

    @IBOutlet weak var popImageView: UIImageView!
    @IBOutlet weak var imageTitle: UILabel!
    
    var passedImage: UIImage!
    var passedTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        imageTitle.text = passedTitle
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
//        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
