import SwiftUI

struct CurrencyView: View {
    @State private var gridLayout: [GridItem] = [ GridItem(.flexible()) ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(
                      label:
                        CurrencyLabelView(labelText: "Moeda", labelImage: "dollarsign.circle")
                    ) {
                        CurrencyRowView(name: "🇺🇸 Dolar", value: "R$ 0.19")
                        CurrencyRowView(name: "🇪🇺 Euro", value: "R$ 0.19")
                        CurrencyRowView(name: "🇯🇵 Yen", value: "R$ 26.28")
                    } //: GROUPBOX
                    .padding()
                } //: VSTACK
            }
        }
    }
}

struct CurrencyView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyView()
    }
}
