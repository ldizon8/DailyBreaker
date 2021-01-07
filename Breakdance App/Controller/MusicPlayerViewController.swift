import UIKit
import AVFoundation

class MusicPlayerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var table: UITableView!

    
    var songs = [Song]()


    override func viewDidLoad() {
        
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        
        navigationItem.title = "Music Library"
        
        configureSongs()
    }
    
    func configureSongs(){
        songs.append(Song(name: "Ambulance",
                          albumName: "Ambulance-Single",
                          artistName: "June",
                          imageName: "cover1",
                          trackName: "song1"))
        
        songs.append(Song(name: "Resentment",
                          albumName: "Resentment-Single",
                            artistName: "ADTR",
                            imageName: "cover2",
                            trackName: "song2"))
        
        songs.append(Song(name: "Sadboi",
                          albumName: "Andy",
                          artistName: "Raleigh Ritchie",
                          imageName: "cover3",
                          trackName: "song3"))
        
          songs.append(Song(name: "Boredom",
                                albumName: "Flower Boy",
                                artistName: "Tyler the Creator",
                                imageName: "cover4",
                                trackName: "song4"))
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create playlist row
        if indexPath == IndexPath(row: 0, section: 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlaylistCell", for: indexPath)
            cell.textLabel?.text = "Playlists"
            return cell
            
        }
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let song = songs[indexPath.row ]
        
        //configure
        cell.textLabel?.text = song.name
        cell.detailTextLabel?.text = song.albumName
        cell.imageView?.image = UIImage(named:   song.imageName)
        
        cell.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 18 )
        cell.detailTextLabel?.font = UIFont(name: "Helvetica", size: 17 )
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        table.deselectRow(at: indexPath, animated: true )
        
        //For playlist cell, do nothing for now
        if indexPath == IndexPath(row: 0, section: 0){
            return
        }
        
        //present the player
        let position = indexPath.row
        guard let vc = storyboard?.instantiateViewController(identifier:  "player" ) as? PlayerViewController else {
            return
        }
        vc.songs = songs
        vc.position = position
        present(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath == IndexPath(row: 0, section: 0){
            return 80
        }
        return 60
    }
    
}