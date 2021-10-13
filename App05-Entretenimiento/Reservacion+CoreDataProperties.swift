//
//  Reservacion+CoreDataProperties.swift
//  App05-Entretenimiento
//
//  Created by user195582 on 10/12/21.
//
//

import Foundation
import CoreData


extension Reservacion {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Reservacion> {
        return NSFetchRequest<Reservacion>(entityName: "Reservacion")
    }

    @NSManaged public var fecha: Date?
    @NSManaged public var hora: Date?
    @NSManaged public var id: UUID
    @NSManaged public var titulo: String?
    @NSManaged public var usuario: String?
    @NSManaged public var cantPer: Int32

}

extension Reservacion : Identifiable {
    var fecha_wrapped : Date{ fecha ?? Date()}
    var hora_wrapped : Date{ hora ?? Date()}
    var titulo_wrapped : String{ titulo ?? " "}
    var usuario_wrapped : String{ usuario ?? " "}
}
