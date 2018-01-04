//
//  LandscapeVC.swift
//  KifAlertFailureDemo
//
//  Created by Eric Cerney on 1/3/18.
//  Copyright © 2018 Capital One. All rights reserved.
//

import UIKit
import AVFoundation

class LandscapeVC: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
        UIViewController.attemptRotationToDeviceOrientation()
    }
    
    @IBAction func showAlert() {
        AVCaptureDevice.requestAccess(for: .video) { granted in
            print("Permission Granted: \(granted)")
        }
    }
}
