import SwiftUI
import Combine

struct HomeView: View {
    @State private var value = ""
    
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
                
                TextField("Digite aqui o valor desejado", text: $value)
                    .keyboardType(.numberPad)
                    .onReceive(Just(value)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.value = filtered
                        }
                }
            }
            CalcButtonView(value: value)
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
