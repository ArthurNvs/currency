public class FetchCurrency: GetClientProtocol {
    
    var real = Real()
    var euro = Euro()
    var dollar = Dollar()
    var yen = Yen()
    
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
