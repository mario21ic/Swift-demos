//  AprendoSwift
//
//  Created by Mario J. Inga Cahuana on 5/12/20.
//

// MARK: Session 1

// MARK: Constants
let pi_implicito = 3.141516
print("pi implicito: \(pi_implicito)")

let pi_explicito:Double = 3.141516
print("pi explicito: \(pi_explicito)")

let pi_explicit:Double
pi_explicit = 3.141516
print("pi explicit: \(pi_explicit)")


// MARK: Variables
var saldo_implicito = 234.45
print("saldo implicito: \(saldo_implicito)")

var saldo_explicito:Double; saldo_explicito = 234.45
print("saldo explicito: \(saldo_explicito)")

var saldo1 = 123, saldo2 = 123.3, saldo3 = 123.34


// MARK: Type Annotations
var welcome: String = "Welcome to the "
welcome += "playground"
print("welcome: \(welcome)")
welcome = "Bonjour"
print("welcome: \(welcome)")

var red, green, blue: Double
var myFloat:Float = 12.45

var temperature:Double = 12.3
var edad:Int = 34


// MARK: Signed and Unsigned
var myInt8:Int8 = -12
var myInt16:Int16 = -12
var myInt32:Int32 = -12
var myInt64:Int64 = -12

var myUInt8:UInt8 = 12
var myUInt16:UInt16 = 12
var myUInt32:UInt32 = 12
var myUInt64:UInt64 = 12


// MARK: Convertion
let temperatura = 12.3
let redondeaEntero = Int(temperatura)
print("Temperatura redondeada \(redondeaEntero)")

let numeroInt = 55
let numeroFloat = Float(numeroInt)
let numeroDouble = Double(numeroInt)
print("El numero float \(numeroFloat) y el numero double es \(numeroDouble)")

let edad1 = "23"
let numeroIntDesdeString = Int(edad1)
print("Edad es \(numeroIntDesdeString)")


// MARK: Optional Variable
var nombreAlumno:String?
var saldoBanco:Float?
print(nombreAlumno)
nombreAlumno = "Jorge"
saldoBanco = 234.34
print("nombre es \(nombreAlumno) y saldo es \(saldoBanco)")

// Retirar modo optional o forzar (unwrap) usando !
print("nombre es \(nombreAlumno!) y saldo es \(saldoBanco!)")

// validando y definiendo una constante
if let nombreAlumno2 = nombreAlumno {
    print("Nuevo nombre \(nombreAlumno2)")
}


// MARK: Collection Types
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
someInts.append(3)
someInts.append(5)
someInts.append(1)
print("someInts is of type [Int] with \(someInts.count) items.")
for i in someInts {
    print("i: \(i)")
}

var threeDoubles = Array(repeating: 0.0, count: 3)

// MARK: Functions
func hello() {
    print("Hello World")
}

func helloName(nombre: String) {
    print("Hello \(nombre)")
}

func greet(nombre: String) -> String {
    return "Hello \(nombre)"
}

hello()
helloName(nombre: "Mario")
print(greet(nombre: "mario21ic"))

func restart(alMinuendo: Int, elSustraendo: Int) -> Int {
    return (alMinuendo - elSustraendo)
}

func sumar(numeroA: Int, numeroB: Int) -> Int {
    return (numeroA + numeroB)
}

func imprimir(resultado: Int) {
    print("El resultado es: \(resultado)")
}

let resultadoResta = restart(alMinuendo: 5, elSustraendo: 3)
let resultadoSuma = sumar(numeroA: 4, numeroB: 6)

imprimir(resultado: resultadoResta)



// MARK: Class & Object - Struct
// Note: Swift no tiene protected, solo private
// Clase es un puntero a un Struct
class Persona {
    // Propiedades != Atributos
    // Como ya esta creado se llama atributo y ya no propiedad
    // var nombre: String // sin valor por defecto
    var nombre: String = ""
    var apellido: String = ""

    // Constructor
    init() {
        self.nombre = ""
        self.apellido = ""
    }
    init(nombre: String, apellido: String = "Moviles") {
        self.nombre = nombre
        self.apellido = apellido
    }
    /* Java style <-- Propiedad
     String nombre; <-- Atributo
     void setNombre(String nombre) { <-- Setter
       this.nombre = nombre;
     }
     string getNombre() { <-- Getter
       return this.nombre
     } */
    
    func imprimirDetalle() {
        print("Persona con nombre: \(nombre) \(apellido)" )
    }
}
class Profesor: Persona {
    var espacialidad: String = ""
    var salario: Int = 930

    override func imprimirDetalle() {
        print("Profesor: \(nombre) \(apellido)\nEspacialidad: \(espacialidad)\nSalario: \(salario)")
    }
}

class Alumno: Persona {
    var curso: String = ""
    var realizoPago: Bool = true
}

let estudiante = Persona(nombre: "Mario", apellido: "Inga")
//let estudiante2 = Persona()
var estudiante2 = Persona()
estudiante2.nombre = "Jesus"
estudiante2.apellido = "Uribe"

let teacher1 = Profesor(nombre: "Arturo", apellido: "Gamarra")
teacher1.imprimirDetalle()

// MARK: - Struct
// Es mas ligera que una clase, no tiene herencia y va por valor
struct Curso {
    var nombre: String = ""
    var cantidadAlumnos: Int = 0

    // Constructor vacio
    init() {
    }
    // Constructor con params
    init(nombre: String, cantidad: Int = 10) {
        self.nombre = nombre
        self.cantidadAlumnos = cantidad
    }

    func imprimirDetalles() {
        print("Curso \(nombre) con aforo\(cantidadAlumnos)")
    }
}

//let iosBasico = Curso(nombre: "iOS")
var iosBasico = Curso(nombre: "iOS")
iosBasico.nombre = "Android"

// MARK: Session 2

// MARK: Conditionals

// MARK: IF
let temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen")
} else {
    print("It's not that cold. Wear a t-shirt")
}

// MARK: IF LET
var edadString2 = "31"

// Version 1
var edad2 = Int(edadString2)
if edad2 != nil {
    let edadNoNulo = edad2!
    print("Mi edad es \(edadNoNulo)")
}

//  Version 2
var edad3 = Int(edadString2)
if let edadNoNulo = edad3 {
    print("Mi edad es: \(edadNoNulo)")
}

// Version 3
if let edadNoNulo = Int(edadString2) {
    print("Mi edad es: \(edadNoNulo)")
}

// MARK: Guard
//func convertirANumero(laCadena cadena: String) -> Int {
//    if !cadena.isEmpty {
//        if !cadena.contains(".") {
//            if let numero = Int(cadena) {
//                return numero
//            } else {
//                return 0
//            }
//        } else {
//            return 0
//        }
//    } else {
//        return 0
//    }
//}
// Siguiendo el patron dorado
func convertirANumero(laCadena cadena: String) -> Int {
    if cadena.isEmpty {
        return 0
    }
    if cadena.contains(".") {
        return 0
    }
    
    guard let numero = Int(cadena) else {
        return 0
    }
    print("La cadena se convirtio en el numero: \(numero)")
    return numero
}

// MARK: Control Flow
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

for i in 1..<5 {
    print("i: \(i)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

// Switch
// No requiere break, a menos que solo quieras salir
// Tampoco necesita llaves
//let diaDeLaSemana = "Jueves"
//let diaDeLaSemana = "Lunes"
let diaDeLaSemana = "Miercoles"
switch diaDeLaSemana {
case "Lunes":
    print("Hoy es lunes y toca ir al trabajo")
    print("Hoy toca menestras con huevo")
case "Martes", "Miercoles":
    print("Hoy toca carne")
case "Jueves":
    print("Hoy es jueves de pavita ")
default:
    print("No hay plan")
}
