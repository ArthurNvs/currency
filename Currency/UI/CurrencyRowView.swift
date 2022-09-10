import SwiftUI

struct CurrencyRowView: View {
  var name: String
  var value: String? = nil
  
  var body: some View {
    VStack {
      Divider().padding(.vertical, 4)
      HStack {
        Text(name).foregroundColor(Color.gray)
        Spacer()
        if (value != nil) {
          Text(value!)
        } else {
          /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
        }
      }
    }
  }
}

struct CurrencyRowView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
        CurrencyRowView(name: "Developer", value: "Arthur Neves")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        CurrencyRowView(name: "Developer", value: "Arthur Neves")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
  }
}
