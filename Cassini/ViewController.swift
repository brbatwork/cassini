//
//  ViewController.swift
//  Cassini
//
//  Created by Bill Barbour on 6/5/15.
//  Copyright (c) 2015 SograSoftware LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController {
            if let identifer = segue.identifier {
                switch identifer {
                    case "earth":
                        ivc.imageURL = DemoURL.NASA.Earth
                        ivc.title = "Earth"
                    case "saturn":
                        ivc.imageURL = DemoURL.NASA.Saturn
                        ivc.title = "Saturn"
                    case "cassini":
                        ivc.imageURL = DemoURL.NASA.Cassini
                        ivc.title = "Cassini"
                default: break
                }
            }
        }
    }


}

