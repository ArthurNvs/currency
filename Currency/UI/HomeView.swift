import SwiftUI
import Combine

struct HomeView: View {
    @State private var value = 0.0
    
    @State private var selectedCurrency = "Dollar"
    let currencies = ["Dollar", "Euro", "Yen"]
    
    var body: some View {
        VStack {
            HStack {
                Picker("Moeda", selection: $selectedCurrency) {
                    ForEach(currencies, id: \.self) {
                        Text($0)
                    }
                }
                .foregroundColor(.gray)
                
                TextField("Valor", value: $value, format:
                        .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                }
            
            CalcButtonView(value: value, currency: selectedCurrency)
            
            }
        }
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
