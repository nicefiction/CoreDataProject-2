// MARK: SOURCE
// https://www.hackingwithswift.com/books/ios-swiftui/why-does-self-work-for-foreach



// MARK: - LIBRARIES -

import SwiftUI



struct ForEachAndSelf: View {
   
   // MARK: - COMPUTED PROPERTIES
   
   var body: some View {
      
      List {
         ForEach([2, 4, 6, 8, 10],
                 id: \.self) { (number: Int) in
            Text("\(number) is even.")
         }
      }
   }
}





// MARK: - PREVIEWS -

struct ForEachAndSelf_Previews: PreviewProvider {
   
   static var previews: some View {
      
      ForEachAndSelf()
   }
}
