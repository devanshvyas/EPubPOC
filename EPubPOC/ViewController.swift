//
//  ViewController.swift
//  EPubPOC
//
//  Created by Zaid Pathan on 29/10/18.
//  Copyright © 2018 Solution Analysts. All rights reserved.
//

import UIKit
import FolioReaderKit

class ViewController: UIViewController {

    let folioReader = FolioReader()
    let bookName = "Metamorphosis-jackson"
    let config = FolioReaderConfig(withIdentifier: "Metamorphosis-jackson")
    var bookPath: String? {
        return Bundle.main.path(forResource: bookName, ofType: "epub")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        config.allowSharing = false
        config.enableTTS = false
        config.displayTitle = true
        config.useReaderMenuController = false
        config.canChangeScrollDirection = false
        config.tintColor = UIColor.white
        config.shouldHideNavigationOnTap = true
    }


    @IBAction func buttonClicked(_ sender: Any) {
        self.folioReader.presentReader(parentViewController: self, withEpubPath: bookPath ?? "" , andConfig: self.config)
    }
    
    
}

