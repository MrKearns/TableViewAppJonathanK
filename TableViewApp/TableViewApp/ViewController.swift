//
//  ViewController.swift
//  TableViewApp
//
//  Created by Jonathan Kearns on 9/27/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var bakerTable: UITableView!
    
    let bakersArray = ["Abdul", "Carole", "Dawn", "James", "Janusz", "Kevin", "Maisam", "Maxy", "Rebs", "Sandro", "Syabira", "Will"]
    
    var firstViewBakerName = "hi"
    var firstViewBakerBio = ""
    var firstViewBakerImage = UIImage(named: "abdul")
    
        
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! SecondViewController
        secondController.name = firstViewBakerName
        secondController.bio = firstViewBakerBio
        secondController.image = firstViewBakerImage
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bakersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        cell?.backgroundColor = UIColor.clear
        cell?.textLabel?.text = bakersArray[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            firstViewBakerName = "Abdul"
            firstViewBakerImage = UIImage(named: "abdul-2")
            firstViewBakerBio = "Raised in Saudi Arabia to Pakistani parents, Abdul is the middle of three children – and the one who got into trouble for pulling apart the electronic devices around the house! All’s well that ends well, though, and he is now an electronics engineer, dividing his time between London and Cambridge. A keen salsa dancer, and a self-confessed space nerd, his interest in baking began when he and his graduate colleagues baked for each other to brighten up their daily coffee breaks. He applies his precision thinking to the chemistry of creating bakes. Matcha is among his favourite flavours."
        }
        if indexPath.row == 1{
            firstViewBakerName = "Carol"
            firstViewBakerImage = UIImage(named: "Carole")
            firstViewBakerBio = "Born and bred in the West Country, Carole lives on a Dorset hillside with her husband, Michael. Her segment on a local radio show is called ‘Compost Carole’; during which she shares her gardening know-how with listeners. Carole brings the artistry that she uses in her garden to her baking, creating colourful and eclectic bakes that are inspired by her passion for horticulture. She began her dedicated baking journey with a first birthday cake for her eldest granddaughter Maisie. Since then, she has refined her skills, using YouTube to teach herself the finer techniques of decoration. Her favourite flavours are fruity and punchy."
        }
        if indexPath.row == 2{
            firstViewBakerName = "Dawn"
            firstViewBakerImage = UIImage(named: "Dawn")
            firstViewBakerBio = "The eldest of three children, Dawn lives with her partner Trevor (the self-styled person who tidies up the kitchen after her!) and is mother to three, step-mother to two, and gran/step-gran to four. Describing herself as an artist in and out of the kitchen, Dawn loves the challenge of an illusion cake (the more impossible-sounding, the better), favouring whacky and intricate designs that allow her to express her creative talent. She prides herself on her steady hand and attention to detail, especially when it comes to the intricacy required for lace patterns on biscuits. Her favourite flavours are lemon, salted caramel and anything nutty."
        }
        if indexPath.row == 3{
            firstViewBakerName = "James"
            firstViewBakerImage = UIImage(named: "james")
            firstViewBakerBio = "Proud kilt-wearer James grew up in the east-end of Glasgow and moved to England after university. He is a self-proclaimed board game geek and loves horror films from the 70s and 80s. An avid music fan, reflect in his baking style; which is now significantly better than it was during his childhood when he was burning pancakes in his mother’s kitchen! He enjoys the technical side of baking, but is in his element when he makes his bakes his own, with his signature ‘child-friendly horror’ style and adorable decoration. His favourite flavours are anything autumnal, such as mixed spice, apples and caramel."
        }
        if indexPath.row == 4{
            firstViewBakerName = "Janusz"
            firstViewBakerImage = UIImage(named: "janusz")
            firstViewBakerBio = "Janusz grew up in Poland and moved to the UK 10 years ago. He is now living on the southeast coast with his boyfriend, Simon, and their sausage dog, Nigel. Apart from baking, Janusz’s passions include internet culture, watching drag (he even bought his boyfriend a statue of RuPaul) and collecting movie props. He was inspired to bake by his mother, who always baked on a Saturday; a tradition Janusz continued when he moved away from home to go to university. He describes his baking style as ‘cartoon-like, colourful and camp’, and loves working Polish ingredients into British staples. His favourite flavours are ginger and chocolate."
        }
        if indexPath.row == 5{
            firstViewBakerName = "Kevin"
            firstViewBakerImage = UIImage(named: "kevin")
            firstViewBakerBio = "Surrounded by family and much-loved animals, Kevin is devoted to his nearest and dearest and spends as much time as possible with his wife, Rachel, and his siblings and their partners, laughing, eating and playing board games. A talented musician, who not only teaches but also performs, Kevin is principally a saxophonist, but is accomplished at the flute, the piano and the clarinet too. He began baking when he was 17. His ethos in the kitchen is to use the best, seasonal ingredients and to spend time refining his technique – with these in hand, he believes the presentation will take care of itself. He loves interesting combinations of fruits, herbs, nuts and spices."
        }
        if indexPath.row == 6{
            firstViewBakerName = "Maisam"
            firstViewBakerImage = UIImage(named: "maisam")
            firstViewBakerBio = "Originally from Libya, Maisam has lived in the UK since she was nine. She speaks five languages (English, Arabic, Amazigh, Spanish and Turkish) aims to make that seven by the time she turns 20. Maisam has a strong creative streak, spending her spare time photographing still-lifes and the world around her. She has been baking since she was about 13 years old, and she loves the science required to get a bake right – often trying something multiple times until it is perfect. Her favourite flavours are inspired by her Mediterranean heritage – she loves the tang of olives, the sweetness of dates and the nuttiness of sesame seeds."
        }
        if indexPath.row == 7{
            firstViewBakerName = "Maxy"
            firstViewBakerImage = UIImage(named: "maxy")
            firstViewBakerBio = "Swedish-born Maxy studied fine art and went on to achieve a Masters degree in Architecture, pausing her final qualifications to raise her two daughters, Tyra and Talia. She has DIY-ed every corner of her flat – from laying the flooring and resurfacing the balcony to painting the walls and hanging her own artwork. She began baking five years ago, with the arrival of her first daughter, and uses her strong artistic skills to create beautifully decorated celebration cakes. Her favourite flavours link to her Scandinavian upbringing – the sweet and delicate spice of cardamom and saffron buns and cinnamon rolls."
        }
        if indexPath.row == 8{
            firstViewBakerName = "Rebs"
            firstViewBakerImage = UIImage(named: "rebs")
            firstViewBakerBio = "Rebs spent her childhood in the countryside in Northern Ireland and loves everything to do with Irish culture – she can Irish dance and play the tin whistle. Her earliest baking memory is of being a child, aged only three years old, helping her mum in the kitchen, and of eating her granny’s renowned lemon meringue pies! More recently, she returned to baking as a way to unwind from the stress of a busy life in the tech world. Flavour is paramount for her, and she has more recently started to play around with Middle Eastern ingredients – in a nod to her boyfriend, Jack’s Turkish family heritage."
        }
        if indexPath.row == 9{
            firstViewBakerName = "Sandro"
            firstViewBakerImage = UIImage(named: "sandro")
            firstViewBakerBio = "Sandro was born in Angola, but fled the Angolan war with his mum when he was two, settling then in London. Passionate about fitness, Sandro is a keen boxer and has a background in ballet and breakdance too! When Sandro was 21 his father passed away and he turned to baking as a form of therapy. Now, he lives and breathes it, and is often found rustling up bakes in a relaxed vibe with the telly on, or running virtual baking classes for children with autism. He likes to infuse his bakes with flavours from his Angolan heritage – the spice of paprika paired with tangy cheese, and sweet bakes smothered in sticky dulce de leche."
        }
        if indexPath.row == 10{
            firstViewBakerName = "Syabira"
            firstViewBakerImage = UIImage(named: "syabira")
            firstViewBakerBio = "Malaysian-born Syabira is one of seven children. She moved to the UK in 2013 to study for her PhD and is now happily settled in London with her boyfriend, Bradley. She loves gaming and often spends evenings playing an online World-War-II simulation game, which she credits with teaching her about leadership in the real world. Syabira started baking relatively recently – in 2017 – with a red velvet cake, which reminded her of the treats she shared with her friends back home. She is all for giving Malaysian flavour twists to British classics – chicken rendang cornish pasties are a particular favourite."
        }
        if indexPath.row == 11{
            firstViewBakerName = "Will"
            firstViewBakerImage = UIImage(named: "will")
            firstViewBakerBio = "One of three children, Will grew up just outside Bristol, before leaving for university in Liverpool. Now he lives in London with his wife, three children and a cat called Tiggy. When he’s not hanging out with his kids, Will loves DIY and carpentry, which indulges his background in architecture, and cooking up new and exciting dishes in the kitchen. His passion for baking began when he was 2, when his mum would give him her pastry trimmings to turn into little jam tarts. Intrigued by the technical side of baking, he is a particular fan of using yeast – and not just in bread! His favourite flavours are salted caramel and paprika (but not at the same time)."
        }

        performSegue(withIdentifier: "segue", sender: self)
        
        
    }
    
}
 
