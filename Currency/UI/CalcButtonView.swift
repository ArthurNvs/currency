import SwiftUI

struct CalcButtonView: View {
    var value = ""
    
    var body: some View {
      Button(action: {
        print((Double(value) ?? 0) * 2)
        
      }) {
        Text("Calcular")
              .font(.title3)
      }
    }
}

struct CalcButtonView_Previews: PreviewProvider {
  static var previews: some View {
      CalcButtonView(value: "5.3")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
