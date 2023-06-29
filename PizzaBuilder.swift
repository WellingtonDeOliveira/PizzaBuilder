/**

                            Online Swift Compiler.
                Code, Compile, Run and Debug Swift script online.
Write your code in this editor and press "Run" button to execute it.

*/

// Produto final - Pizza
struct Pizza {
    let size: String
    let cheese: Bool
    let pepperoni: Bool
    let bacon: Bool
    let tomato: Bool
}

// Builder - Responsável por construir a pizza
class PizzaBuilder {
    private var size: String = ""
    private var cheese: Bool = false
    private var pepperoni: Bool = false
    private var bacon: Bool = false
    private var tomato: Bool = false
    
    // Definir o tamanho da pizza
    func setSize(_ size: String) {
        self.size = size
    }
    
    // Adicionar queijo à pizza
    func addCheese() {
        self.cheese = true
    }
    
    // Adicionar pepperoni à pizza
    func addPepperoni() {
        self.pepperoni = true
    }
    
    // Adicionar bacon à pizza
    func addBacon() {
        self.bacon = true
    }
    
    // Adicionar tomate à pizza
    func addTomato() {
        self.tomato = true
    }
    
    // Construir a pizza
    func build() -> Pizza {
        return Pizza(size: size, cheese: cheese, pepperoni: pepperoni, bacon: bacon, tomato: tomato)
    }
}

// Diretor - Responsável por coordenar a construção da pizza
class PizzaDirector {
    private let builder: PizzaBuilder
    
    init(builder: PizzaBuilder) {
        self.builder = builder
    }
    
    // Criar uma pizza de queijo e bacon
    func makeCheeseBaconPizza() -> Pizza {
        builder.setSize("Média")
        builder.addCheese()
        builder.addBacon()
        
        return builder.build()
    }
    
    // Criar uma pizza de pepperoni com tomate
    func makePepperoniTomatoPizza() -> Pizza {
        builder.setSize("Grande")
        builder.addPepperoni()
        builder.addTomato()
        
        return builder.build()
    }
}

// Exemplo de uso
let builder = PizzaBuilder()
let builder2 = PizzaBuilder()
var director = PizzaDirector(builder: builder)

let cheeseBaconPizza = director.makeCheeseBaconPizza()
print(cheeseBaconPizza)

director = PizzaDirector(builder: builder2)
let pepperoniTomatoPizza = director.makePepperoniTomatoPizza()
print(pepperoniTomatoPizza)