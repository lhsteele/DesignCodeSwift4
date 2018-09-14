//
//  SectionViewController.swift
//  DesignCodeAppAutoLayout
//
//  Created by Lisa Steele on 9/8/18.
//  Copyright © 2018 lisahsteele. All rights reserved.
//

import UIKit

class SectionViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var coverView: UIView!
    @IBOutlet weak var subheadVisualEffectView: UIVisualEffectView!
    @IBOutlet weak var closeVisualEffectView: UIVisualEffectView!
    
    var section: [String: String]!
    var sections: [[String: String]]!
    var indexPath: IndexPath!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = section["title"]
        captionLabel.text = section["caption"]
        bodyLabel.text = section["body"]
        coverImageView.image = UIImage(named: section["image"]!)
        progressLabel.text = "\(indexPath.row + 1) / \(sections.count)"
        
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

}
