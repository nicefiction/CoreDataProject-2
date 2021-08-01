// Student.swift

// MARK: - LIBRARIES -

import Foundation


struct Student: Hashable {
   
   var name: String
}


/// We can make `Student` conform to `Hashable`
/// because all its properties already conform to `Hashable` ,
/// so Swift will calculate the hash values of each property
/// then combine them into one hash that represents the whole struct .
/// Of course , if we end up with two students that have the same name
/// we’ll hit problems ,
/// just like if we had an array of strings with two identical strings .
/// ( ... )
/// However , Core Data does something really smart here :
/// the objects it creates for us
/// actually have a selection of other properties
/// beyond those we defined in our data model ,
/// including one called the `object ID`
/// – an identifier that is unique to that object ,
/// regardless of what properties it contains .
/// ( ... )
/// WARNING :
/// Although calculating the same hash for an object twice in a row should return the same value ,
/// calculating it between two runs of your app
/// – i.e. , calculating the hash , quitting the app , relaunching , then calculating the hash again –
/// can return different values .
