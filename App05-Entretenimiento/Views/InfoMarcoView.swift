//
//  CarouselView.swift
//  App05-Entretenimiento
//
//  Created by user195619 on 9/30/21.
//

import SwiftUI

struct InfoMarcoView: View {
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Mision")
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorRosa2"))
                    .font(.system(size: 30))
                Group{
                Text("El Museo de Arte Contemporáneo de Monterrey, MARCO, es una Asociación Civil público – privada, sin fines de lucro, que tiene como misión:")
                }
                Group{
                Text("Promover el arte contemporáneo para la formación y la sensibilización de la sociedad.")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
            VStack{
                Text("Vision")
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorRosa2"))
                    .font(.system(size: 30))
                Group{
                Text("MARCO pretende ser ")+Text("accesible, innovador, visionario").bold()+Text(", un lugar vivo que incite al diálogo y al descubrimiento donde se presente el arte contemporáneo de artistas locales, nacionales e internacionales.")
                }
                Group{
                Text("El museo debe ser visto como un espacio ")+Text("abierto e incluyente ").bold()+Text("hacia todas las formas de expresión para ser un")+Text(" #MUSEODETODOS").bold()+Text(".")
                }
            }
            ZStack{
                Color("ColorRosa")
                VStack{
                    Text("La Paloma de Juan Soriano")
                        .foregroundColor(.white)
                    Text("Una genial bienvenida")
                    Text("Enorme escultura de bronce de 6 metros de alto y 4 toneladas de peso creada por el gran artista plástico mexicano Juan Soriano. La Paloma brinda la bienvenida a los visitantes en la entrada principal del Museo; con ella, MARCO guarda y comparte una muestra de la genialidad de uno de los artistas más reconocidos de México a nivel internacional, quien se dedicó por más de 5O años a la escultura y la pintura.")
                        .foregroundColor(.white)
                }
            }
            ZStack{
                Color(.white)
                VStack{
                Text("Marco:")
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorRosa"))
                    .font(.system(size: 40))
                Text("Una obra de arte")
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorRosa"))
                    .font(.system(size: 30))
                }
            }
            ZStack{
                Color("ColorRosa")
                VStack{
                Text("16MIL")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                Text("METROS CUADRADOS DE CONSTRUCCIÓN")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                }
            }
            ZStack{
                Color("ColorAmarillo")
                VStack{
                Text("5MIL")
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorAzul"))
                    .font(.system(size: 40))
                Text("METROS CUADRADOS DE EXHIBICIÓN EN 11 SALAS")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                }
            }
            ZStack{
                Color("ColorMorado")
            ScrollView{
                    Text("MARCO se distingue por su belleza, creada por el arquitecto mexicano reconocido internacionalmente Ricardo Legorreta, famoso por la aplicación moderna a los temas nacionales. Legorreta crea diferentes ambientes y atmósferas en cada rincón, provocando que la visita al Museo sea una experiencia única.")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                    Text("Para Legorreta, el valor arquitectónico de MARCO va más allá de las formas al presentar un planteamiento que puede parecer contrario a las tendencias actuales de la museografía. Él crea un edificio que corresponde no sólo al lugar urbano y a Monterrey, sino a todo el pueblo mexicano, mostrando el arte en un ambiente mucho más natural y menos artificial que como se hace en otras partes del mundo.")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                    Text("Las obras se presentan combinando adecuada y equilibradamente la luz natural y la artificial, así, la visita al Museo no es como el recorrer un laboratorio donde hay obras de arte, sino una visita a una serie de espacios y elementos arquitectónicos que resultan una obra de arte en sí mismos.")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                }
            }
        }
        .background(Color("ColorDeFondo"))
    }
}

struct InfoMarcoView_Previews: PreviewProvider {
    static var previews: some View {
        ExpositionsCarousel()
            .environmentObject(MarColectionModel())
    }
}
