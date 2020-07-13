//
//  WindowController.swift
//  Tabs
//
//  Created by Tom Jacob on 7/13/20.
//  Copyright © 2020 Tom Jacob. All rights reserved.
//

import Foundation
import Cocoa


final class WindowController: NSWindowController {
    @IBOutlet weak var testField: NSTextField!
 
    @IBAction override func newWindowForTab(_ sender: Any?) {
        if let wc = NSStoryboard.main?.instantiateInitialController() as? WindowController,
            let window = wc.window {
            self.window?.addTabbedWindow(window, ordered: .above)
            window.makeKey()
        }
    }
}
