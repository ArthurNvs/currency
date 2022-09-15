import SwiftUI

struct CalcButtonView: View {
    var value: Double
    var currency: String
    
    var presenter = CurrencyPresenter()
    
    var body: some View {
      Button(action: {
          print(presenter.realToDollar(value: value))
      }) {
        Text("Calcular")
            .font(.title3)
      }
    }
}

struct CalcButtonView_Previews: PreviewProvider {
  static var previews: some View {
      CalcButtonView(value: 4.0, currency: "Dollar")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
