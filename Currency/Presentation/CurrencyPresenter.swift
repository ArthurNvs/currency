public class CurrencyPresenter: GetCurrencyProtocol {
    
    var currency = FetchCurrency()
    
    func dollarToReal(value: Double) -> Double {
        currency.getDollar().toReal * value
    }
    
    func realToDollar(value: Double) -> Double {
        currency.getReal().toDollar * value
    }
    
}

