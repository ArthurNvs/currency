public class FetchCurrency: GetClientProtocol {
    
    var real: Real
    var euro: Euro
    var dollar: Dollar
    var yen: Yen
    
    required init(real: Real, euro: Euro, dollar: Dollar, yen: Yen) {
        self.real = real
        self.euro = euro
        self.dollar = dollar
        self.yen = yen
    }
    
    func getReal() -> Real {
        return real
    }
    
    func getDollar() -> Dollar {
        dollar
    }
    
    func getEuro() -> Euro {
        euro
    }
    
    func getYen() -> Yen {
        yen
    }
    
}
