import SwiftUI

struct CurrencyLabelView: View {
  var labelText: String
  var labelImage: String
  var body: some View {
    HStack {
      Text(labelText.uppercased()).fontWeight(.bold)
      Spacer()
        Image(systemName: labelImage)
    }
  }
}

struct CurrencyLabelView_Previews: PreviewProvider {
  static var previews: some View {
      CurrencyLabelView(labelText: "Moedas", labelImage: "dollarsign.circle")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
