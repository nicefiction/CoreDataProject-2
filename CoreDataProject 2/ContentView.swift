// ContentView.swift

// MARK: - LIBRARIES -

import SwiftUI
import CoreData



struct ContentView: View {
   
   // MARK: - PROPERTIES
   
   let students: [Student] = [
      
      Student(name: "Dorothy"),
      Student(name: "Ozma"),
      Student(name: "Glinda"),
      Student(name: "Olivia")
   ]
   
   
   
   // MARK: - COMPUTED PROPERTIES
   
   var body: some View {
      
      List {
         ForEach(students,
                 id: \.self) { (student: Student) in
            Text(student.name)
         }
      }
   }
}





// MARK: - PREVIEWS -

struct ContentView_Previews: PreviewProvider {
   
   static var previews: some View {
      
      ContentView()
   }
}
