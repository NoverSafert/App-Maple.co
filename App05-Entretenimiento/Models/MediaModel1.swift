//
//  MediaModel.swift
//  App04-Peliculas
//
//  Created by Elvia Rosas on 16/03/21.
//

    import SwiftUI

    class MediaModel1: ObservableObject {
        
        @Published var arrObras = [Media1]()
        
        
        
        init() {
            LoadInfo()
        }
        
        func LoadInfo() {
            
            var media: Media1
            
            media = Media1(sName: "Raya and the Last Dragon", iYear: 2021, sHeadline: "A quest to save her world.", sOverview: "Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned ...",  arrImages: ["Obra1"], show: false)
            arrObras.append(media)
            media = Media1(sName: "Monster Hunter", iYear: 2020,  sHeadline: "Behind our world, there is another.", sOverview: "A portal transports Cpt. Artemis and an elite unit of soldiers to a strange world where powerful monsters rule with deadly ferocity. Faced with relentless danger, the team encounters a mysterious hunter who may be their only hope to find a way home.", arrImages: ["Obra2"], show : false)
            arrObras.append(media)
            media = Media1(sName: "Wonder Woman 1984", iYear: 2020, sHeadline: "A new era of wonder begins.", sOverview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s and finds a formidable foe by the name of the Cheetah.", arrImages: ["Obra3"], show: false)
            arrObras.append(media)
            media = Media1(sName: "Cobra Kai ", iYear: 2018, sHeadline: "Cobra Kai never dies", sOverview: "This Karate Kid sequel series picks up 30 years after the events of the 1984 All Valley Karate Tournament and finds Johnny Lawrence on the hunt for redemption by reopening the infamous Cobra Kai karate dojo. This reignites his old rivalry with the successful Daniel LaRusso, who has been working to maintain the balance in his life without mentor Mr. Miyagi.", arrImages: ["Obra4"], show:false)
            arrObras.append(media)
            media = Media1(sName: "WandaVision", iYear: 2021, sHeadline: "Cobra Kai never dies.", sOverview: "Wanda Maximoff and Vision—two super-powered beings living idealized suburban lives—begin to suspect that everything is not as it seems.", arrImages: ["Obra5"],show:false)
            arrObras.append(media)
            media = Media1(sName: "The Mandalorian", iYear: 2019,sHeadline: "Bounty hunting is a complicated profession.", sOverview: "After the fall of the Galactic Empire, lawlessness has spread throughout the galaxy. A lone gunfighter makes his way through the outer reaches, earning his keep as a bounty hunter.", arrImages: ["Obra6"], show:false)
            arrObras.append(media)
        }
    
}
