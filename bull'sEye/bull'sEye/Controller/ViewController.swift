//
//  ViewController.swift
//  bull'sEye
//
//  Created by Adam Khalifa on 13.08.2022.
//

import UIKit

var number: Int = Int.random(in: 0...100)
let rounds = 1

class ViewController: UIViewController {

		let topStack: UIStackView = {
				let stack = UIStackView()
				stack.axis = .horizontal
				stack.distribution = .fill
				stack.spacing = 3

				return stack
		}()

		let topText: UILabel = {

				let view = UILabel()

				view.text = "Put the Bull's Eye as close as you can to \(number)"
				view.textColor = .white
				view.font = UIFont(name: "verdana", size: 16)
				view.textAlignment = .center
				view.sizeToFit()

				return view
		}()

		let fromLabel: UILabel = {
				let label = UILabel()

				label.font = UIFont(name: "Verdana", size: 25)
				label.text = "1"
				label.textColor = .white

				return label
		}()

		let toLabel: UILabel = {
				let label = UILabel()

				label.font = UIFont(name: "Verdana", size: 25)
				label.text = "100"
				label.textColor = .white

				return label
		}()

		let mainButton: UIButton = {

				let button = UIButton()
				button.setTitle("Hit Me", for: .normal)
				button.backgroundColor = .systemPink
				button.layer.cornerRadius = 4

				return button
		}()

		let startOverButton: UIButton = {
				let button = UIButton()

				button.setTitle("Start over", for: .normal)
				button.tintColor = .systemRed
				button.backgroundColor = .systemMint

				return button
		}()

		let mainSlider: UISlider = {
				let view = UISlider()
				view.backgroundColor = .systemMint
				view.layer.cornerRadius = 6
				view.addTarget(.none, action: #selector(sliderMoved), for: .touchUpInside)

				return view
		}()

		let lowerStack: UIStackView = {
				let stack = UIStackView()

				stack.backgroundColor = .white
				stack.axis = .horizontal
				stack.distribution = .fillProportionally
				stack.spacing = 3

				return stack
		}()

		let scoreLabel: UILabel = {
				let label = UILabel()

				label.font = UIFont(name: "Verdana", size: 18)
				label.text = "score: "
				label.textColor = .black

				return label
		}()

		let roundLabel: UILabel = {
				let label = UILabel()

				label.font = UIFont(name: "Verdana", size: 18)
				if rounds <= 1 {
						label.text = "Round: \(rounds)"
				} else {
						label.text = "Rounds: \(rounds)"
				}
				label.textColor = .black

				return label
		}()

		let infoImage: UIButton = {
				let button = UIButton()

				button.setBackgroundImage(UIImage(systemName: "info.circle"), for: .normal)

				return button
		}()

		override func viewDidLoad() {
				super.viewDidLoad()

				assignbackground()

				view.addSubview(mainButton)
				view.addSubview(topStack)
				view.addSubview(topText)
				view.addSubview(lowerStack)

				topStack.addArrangedSubview(fromLabel)
				topStack.addArrangedSubview(mainSlider)
				topStack.addArrangedSubview(toLabel)

				lowerStack.addArrangedSubview(startOverButton)
				lowerStack.addArrangedSubview(scoreLabel)
				lowerStack.addArrangedSubview(roundLabel)
				lowerStack.addArrangedSubview(infoImage)

				mainButton.addTarget(.none, action: #selector(showAlert), for: .touchUpInside)

				setLayout()
		}

		func assignbackground(){
				let background = UIImage(named: "bg")

				var imageView : UIImageView!
				imageView = UIImageView(frame: view.bounds)
				imageView.contentMode =  UIView.ContentMode.scaleAspectFill
				imageView.clipsToBounds = true
				imageView.image = background
				imageView.center = view.center
				view.addSubview(imageView)
				self.view.sendSubviewToBack(imageView)
		}

		func setLayout() {
				setconstraints()
		}

		func setconstraints() {
				mainButton.translatesAutoresizingMaskIntoConstraints = false
				topStack.translatesAutoresizingMaskIntoConstraints = false
				topText.translatesAutoresizingMaskIntoConstraints = false
				lowerStack.translatesAutoresizingMaskIntoConstraints = false

				NSLayoutConstraint.activate([

						topStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
						topStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
						topStack.bottomAnchor.constraint(equalTo: mainButton.topAnchor, constant: -100),
						topStack.heightAnchor.constraint(equalToConstant: 35),

						topText.leadingAnchor.constraint(equalTo: view.leadingAnchor),
						topText.trailingAnchor.constraint(equalTo: view.trailingAnchor),
						topText.bottomAnchor.constraint(equalTo: topStack.topAnchor, constant: -50),
						topText.heightAnchor.constraint(equalToConstant: 35),

						mainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
						mainButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
						mainButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -170),
						mainButton.heightAnchor.constraint(equalToConstant: 50),

						lowerStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
						lowerStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
						lowerStack.topAnchor.constraint(equalTo: mainButton.bottomAnchor, constant: 50),
						lowerStack.heightAnchor.constraint(equalToConstant: 35),
				])
		}

		@IBAction func sliderMoved(_ slider: UISlider) {
		 print("The value of the slider is now: \(mainSlider.value)")
	 }

		@IBAction func showAlert() {
				let alert = UIAlertController(title: "whatever", message: "message", preferredStyle: .alert)

				let action = UIAlertAction(title: "dismiss", style: .destructive, handler: nil)
				alert.addAction(action)
				present(alert, animated: true, completion: nil)
		}
}
