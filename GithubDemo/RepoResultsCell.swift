//
//  RepoResultsCell.swift
//  GithubDemo
//
//  Created by Vince  on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoResultsCell: UITableViewCell {

    @IBOutlet weak var avatarView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var starImage: UIImageView!
    @IBOutlet weak var forkImage: UIImageView!
   
    
    var githubRepo: GithubRepo! {
        didSet {
           
            avatarView.setImageWith(URL(string: githubRepo.ownerAvatarURL!)!)
            titleLabel.text = githubRepo.name
            ownerLabel.text = githubRepo.ownerHandle
            descriptionLabel.text = githubRepo.repoDescription
            starLabel.text = "\(githubRepo.stars!)"
            forkLabel.text = "\(githubRepo.forks!)"
            
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        forkImage.image = UIImage(named: "fork")
        starImage.image = UIImage(named: "star")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
