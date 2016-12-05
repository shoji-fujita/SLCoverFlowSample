//
//  ViewController.swift
//  SLCoverFlowSample
//
//  Created by shoji on 2016/12/05.
//  Copyright © 2016年 shoji fujita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coverFlowAreaView: UIView!
    var coverFlowView = SLCoverFlowView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        coverFlowView.frame = coverFlowAreaView.bounds
        coverFlowAreaView.addSubview(coverFlowView)
        coverFlowView.delegate = self
        coverFlowView.coverSize = CGSize(width: 100, height: 200)
        coverFlowView.coverSpace = 50
        coverFlowView.coverAngle = 0.0
        coverFlowView.coverScale = 1.2
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        coverFlowView.reloadData()
    }
    
}

extension ViewController: SLCoverFlowViewDataSource {
    
    func number(ofCovers coverFlowView: SLCoverFlowView!) -> Int {
        return 5
    }
    
    func coverFlowView(_ coverFlowView: SLCoverFlowView!, coverViewAt index: Int) -> SLCoverView! {
        let view = SLCoverView()
        view.backgroundColor = .red
        return view
    }
}
