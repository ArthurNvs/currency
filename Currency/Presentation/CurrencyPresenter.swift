class CurrencyPresenter: GetCurrencyProtocol {
    
    var currency: FetchCurrency
    
    init(fetchCurrency: FetchCurrency) {
        self.currency = fetchCurrency
    }
    
    func dollarToReal(value: Double) -> Double {
        currency.getDollar().real * value
    }
    
    func realToDollar(value: Double) -> Double {
        currency.getReal().dollar * value
    }
    
}

