import SwiftUI
import Combine

struct HomeView: View {
    @State private var value = 0.0
    
    @State private var selectedCurrency = "Dollar"
    let currencies = ["Dollar", "Euro", "Yen"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Valor", value: $value, format:
                            .currency(code: Locale.current.currencyCode ?? "USD"))
                            .keyboardType(.decimalPad)
                
                    Picker("Moeda", selection: $selectedCurrency) {
                        ForEach(currencies, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                CalcButtonView(value: value, currency: selectedCurrency)
            }
            .navigationTitle("Currency")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
