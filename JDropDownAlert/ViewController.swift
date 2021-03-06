//
//  ViewController.swift
//  JDropDownAlert
//
//  Created by Won on 17/05/2017.
//  Copyright © 2017 Won. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let titleString = "What's up?"
	let messageString = "Could you pass me a bottle of water?"


	@IBAction func topAlertAction() {

		let alert = JDropDownAlert()
		alert.alertWith("U can use just title")

		alert.didTapBlock = {
			print("Top View Did Tapped")
		}
	}

	@IBAction func topToLeftAlertAction() {

		let alert = JDropDownAlert(position: .top, direction: .toLeft)
		alert.titleFont = UIFont(name: "Helvetica", size: 20)!
		alert.messageFont = UIFont.italicSystemFont(ofSize: 12)

		alert.alertWith(titleString,
		                message: messageString,
		                topLabelColor: UIColor.white,
		                messageLabelColor: UIColor.darkGray,
		                backgroundColor: UIColor.brown)

		alert.didTapBlock = {
			print("Top View Did Tapped")
		}
	}

	@IBAction func topToRightAlertAction() {

		let alert = JDropDownAlert(position: .top, direction: .toRight)
		alert.alertWith(titleString, message: messageString)

		alert.didTapBlock = {
			print("Top View Did Tapped")
		}
	}


	@IBAction func bottomAlertAction() {

		let alert = JDropDownAlert(position: .bottom)
		alert.alertWith(titleString, message: messageString)

		alert.didTapBlock = {
			print("Bottom Alert View Did Tapped")
		}
	}

	@IBAction func bottomToLeftAlertAction() {

		let alert = JDropDownAlert(position: .bottom, direction: .toLeft)
		alert.alertWith(titleString, message: messageString)

		alert.didTapBlock = {
			print("Bottom Alert View Did Tapped")
		}
	}

	@IBAction func bottomToRightAlertAction() {

		let alert = JDropDownAlert(position: .bottom, direction: .toRight)
		alert.alertWith(titleString, message: messageString)

		alert.didTapBlock = {
			print("Bottom Alert View Did Tapped")
		}
	}
}

