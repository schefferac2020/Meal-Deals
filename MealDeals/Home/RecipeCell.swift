//
//  RecipeCell.swift
//  MealDeals
//
//  Created by Drew Scheffer on 5/11/21.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var mainBackground: UIView!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var stackview: UIStackView!
    @IBOutlet weak var shadowBackgroound: ShadowView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.mainBackground.layer.cornerRadius = 15
        self.mainBackground.layer.masksToBounds = true
        
        selectionStyle = .none        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
