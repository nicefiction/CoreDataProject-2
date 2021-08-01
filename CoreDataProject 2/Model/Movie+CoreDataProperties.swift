// Movie+CoreDataProperties.swift

// MARK: - SOURCE -
// https://www.hackingwithswift.com/books/ios-swiftui/creating-nsmanagedobject-subclasses

// MARK: - LIBRARIES -

import Foundation
import CoreData



extension Movie {
   
   @nonobjc
   public class func fetchRequest()
   -> NSFetchRequest<Movie> {
      
      return NSFetchRequest<Movie>(entityName: "Movie")
   }
   
   
   @NSManaged public var title: String?
   @NSManaged public var director: String?
   @NSManaged public var year: Int16
   
   
   
   // MARK: - COMPUTED PROPERTIES
   
   public var computedTitle: String { return title ?? "N/A" }
   public var computedDirector: String { return director ?? "N/A" }
}





// MARK: EXTENSIONS

extension Movie : Identifiable {}
