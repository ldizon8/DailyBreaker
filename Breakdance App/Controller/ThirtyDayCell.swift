import UIKit

class ThirtyDayCell: UITableViewCell {
    
    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let dayLabel: UILabel = {
        let label = UILabel()
        label.text = "Day 1"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}

extension ThirtyDayCell {
    func setupView(){
        addSubview(cellView)
        cellView.addSubview(dayLabel)
        
        NSLayoutConstraint.activate([
               cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
               cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
               cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
               cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
           ])
        
        dayLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        dayLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        dayLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        dayLabel.leftAnchor.constraint(equalTo: cellView.leftAnchor).isActive = true
    }
}
