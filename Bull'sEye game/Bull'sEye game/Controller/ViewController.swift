//
//  ViewController.swift
//  Bull'sEye game
//
//  Created by Adam Khalifa on 11.08.2022.
//

import UIKit

class ViewController: UIViewController {

		let mainButton: UIButton = {

				let button = UIButton()
				button.setTitle("Hit Me", for: .normal)
				button.backgroundColor = .systemPink
				button.layer.cornerRadius = 4

				return button
		}()

		override func viewDidLoad() {
				super.viewDidLoad()

				view.addSubview(mainButton)
				mainButton.addTarget(.none, action: #selector(showAlert), for: .touchUpInside)
				setLayout()

		}
		func setLayout() {
				setconstraints()

		}

		func setconstraints() {
				mainButton.translatesAutoresizingMaskIntoConstraints = false

				NSLayoutConstraint.activate([
						mainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
						mainButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
						mainButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -170),
						mainButton.heightAnchor.constraint(equalToConstant: 50)
				])
		}

		@IBAction func showAlert() {
				let alert = UIAlertController(title: "whatever", message: "message", preferredStyle: .alert)

				let action = UIAlertAction(title: "dismiss", style: .destructive, handler: nil)
				alert.addAction(action)
				present(alert, animated: true, completion: nil)
		}

}

