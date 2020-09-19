//
//  ViewController.swift
//  Reality 2020
//
//  Created by Андрей Толмачев on 19.09.2020.
//  Copyright © 2020 Андрей Толмачев. All rights reserved.
//

import ARKit //включает в себя библиотеку UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let configuration = ARFaceTrackingConfiguration()
        arView.session.run(configuration)
        
        // Load the "Box" scene from the "webinar" Reality File
        let faceAnchor = try! Webinar.loadScene()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(faceAnchor)
    }
}
