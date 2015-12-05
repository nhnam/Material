//
// Copyright (C) 2015 CosmicMind, Inc. <http://cosmicmind.io> and other CosmicMind contributors
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published
// by the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program located at the root of the software package
// in a file called LICENSE.  If not, see <http://www.gnu.org/licenses/>.
//

import UIKit
import MaterialKit

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		prepareView()
		
		// Examples of using CardView.
		// Uncomment different examples and read
		// the comments below.
//		prepareGeneralCardView()
		prepareCardViewWithoutDivider()
	}
	
	/**
	:name:	prepareView
	:description: General preparation statements.
	*/
	private func prepareView() {
		view.backgroundColor = MaterialColor.white
	}
	
	/**
	:name:	prepareGeneralCardView
	:description:	General usage example.
	*/
	private func prepareGeneralCardView() {
		let cardView: CardView = CardView()
		
		// Title label.
		let titleLabel: UILabel = UILabel()
		titleLabel.text = "Welcome Back!"
		titleLabel.textColor = MaterialColor.teal.darken1
		titleLabel.font = RobotoFont.mediumWithSize(20)
		cardView.titleLabel = titleLabel
		
		// Detail label
		let detailLabel: UILabel = UILabel()
		detailLabel.text = "It’s been a while, have you read any new books lately?"
		detailLabel.numberOfLines = 0
		cardView.detailLabel = detailLabel
		
		// Yes button.
		let btn1: FlatButton = FlatButton()
		btn1.pulseColor = MaterialColor.teal.lighten1
		btn1.pulseFill = true
		btn1.pulseScale = false
		btn1.setTitle("YES", forState: .Normal)
		btn1.setTitleColor(MaterialColor.teal.darken1, forState: .Normal)
		
		// No button.
		let btn2: FlatButton = FlatButton()
		btn2.pulseColor = MaterialColor.teal.lighten1
		btn2.pulseFill = true
		btn2.pulseScale = false
		btn2.setTitle("NO", forState: .Normal)
		btn2.setTitleColor(MaterialColor.teal.darken1, forState: .Normal)

		// Add buttons to left side.
		cardView.leftButtons = [btn1, btn2]
		
		// To support orientation changes, use MaterialLayout.
		view.addSubview(cardView)
		cardView.translatesAutoresizingMaskIntoConstraints = false
		MaterialLayout.alignFromTop(view, child: cardView, top: 100)
		MaterialLayout.alignToParentHorizontally(view, child: cardView, left: 20, right: 20)
		
	}
	
	/**
	:name:	prepareCardViewWithoutDivider
	:description:	An example of the CardView without the divider line between buttons.
	*/
	private func prepareCardViewWithoutDivider() {
		let cardView: CardView = CardView()
		cardView.divider = false
		cardView.backgroundColor = MaterialColor.teal.darken1
		
		// Title label.
		let titleLabel: UILabel = UILabel()
		titleLabel.text = "Data-Driven"
		titleLabel.textColor = MaterialColor.white
		titleLabel.font = RobotoFont.mediumWithSize(24)
		cardView.titleLabel = titleLabel
		
		// Detail label
		let detailLabel: UILabel = UILabel()
		detailLabel.text = "Build scalable data-driven apps with GraphKit."
		detailLabel.textColor = MaterialColor.white
		detailLabel.numberOfLines = 0
		cardView.detailLabel = detailLabel
		
		// Favorite button.
		let img1: UIImage? = UIImage(named: "ic_favorite_white")
		let btn1: FlatButton = FlatButton()
		btn1.pulseColor = MaterialColor.white
		btn1.pulseFill = true
		btn1.pulseScale = false
		btn1.setImage(img1, forState: .Normal)
		btn1.setImage(img1, forState: .Highlighted)
		
		// Add buttons to right side.
		cardView.rightButtons = [btn1]
		
		// To support orientation changes, use MaterialLayout.
		view.addSubview(cardView)
		cardView.translatesAutoresizingMaskIntoConstraints = false
		MaterialLayout.alignFromTop(view, child: cardView, top: 100)
		MaterialLayout.alignToParentHorizontally(view, child: cardView, left: 20, right: 20)
	}
}
