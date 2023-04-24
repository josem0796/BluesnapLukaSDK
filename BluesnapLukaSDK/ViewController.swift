//
//  ViewController.swift
//  BluesnapLukaSDK
//
//  Created by Jose Moran on 24/4/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

  private var hostingController: UIHostingController<CheckoutView>?

  override func viewDidLoad() {
    super.viewDidLoad()

    let checkoutView = CheckoutView()
    hostingController = UIHostingController(rootView: checkoutView)

    guard let hostingController = hostingController else { return }

    addChild(hostingController)
    view.addSubview(hostingController.view)

    hostingController.view.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
      hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])

    hostingController.didMove(toParent: self)
  }


}

class MyViewController: UIViewController {

}

