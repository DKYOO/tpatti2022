//
//  Article+CoreDataProperties.swift
//  tpatti2022
//
//  Created by Dmitry Kaveshnikov on 22/8/22.
//
//

import Foundation
import CoreData


extension Article {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Article> {
        return NSFetchRequest<Article>(entityName: "Article")
    }

    @NSManaged public var content: String?
    @NSManaged public var creationData: Date?
    @NSManaged public var image: String?
    @NSManaged public var language: String?
    @NSManaged public var modificationDate: Date?
    @NSManaged public var title: String?
    
    public override var description: String {
        return """
                title: \(title ?? "Default")
                image: \(image ?? "Default")
                content: \(content ?? "Default")
                creationDate: \(creationData)
                modificationData: \(modificationDate)
                language: \(language ?? "Default")
        \n
        """
    }

}
