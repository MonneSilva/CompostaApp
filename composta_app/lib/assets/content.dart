import 'package:flutter/material.dart';

class Sections {
  static List<dynamic> content = [
    new Section(
        //0
        "Strings",
        ["Comenzar"]),
    new Section(
        //1
        "Routes",
        ["/Home"]),
    new Section(
        //2
        "Welcome",
        [
          new ListContent(
              /*title*/ "¿Qué es el compostaje?",
              /*content*/ [
                "lib/assets/img/Que_es_compostaje.flr",
                "queescomposta",
                "Es un producto obtenido de desechos orgánicos que generas en tu hogar y sirve para nutrir tus plantas.",
              ]),
          new ListContent(
              /*title*/ "",
              /*content*/ [
                "lib/assets/img/Calculadora.flr",
                "Calculadora Composta",
                "En esta aplicación recibirás una guía de como realizar un compostaje personalizado a los tipos y cantidades de residuos que generas en tu hogar.",
              ]),
          new ListContent(
              /*title*/ "",
              /*content*/ [
                "lib/assets/img/Sobre_Composta.flr",
                "Sobre Composta",
                "Recuerda activar las notificaciones para que recibas alertas y recordatorios para mejor control de tu composta.",
              ]),
        ]),
    new Section(
        //3
        "Recomendaciones",
        [
          new ListContent(
              /*title*/ "Recomendaciones Generales",
              /*content*/ [
                "Tienen que mezclarse bien el material café y el material verde.",
                "Mantener una relación de 50% material café y 50% material verde.",
                "Agregar los materiales en trozos pequeños para facilitar la descomposición.",
                "No añadir demasiados restos orgánicos para que los microorganismos sean capaces de degradar la materia.",
                "No llenar el contenedor hasta el borde, dejar 10 o 15 cm libres para evitar que se desborde al momento de mezclar.",
                "Cuando los materiales ya no se distingan y se encuentren bien degradados, tenga un olor a tierra y un color marrón oscuro, la composta estará lista.",
                "Evitar agregar carnes, huesos, estiércol de animales carnívoros, plásticos y cítricos."
              ]),
          new ListContent(
              /*title*/ "Recomendaciones de humedad",
              /*content*/ [
                "Evitar un exceso de humedad dado que el agua forma una capa o película alrededor de los residuos lo que provoca que no llegue oxígeno al material para degradarlo.",
                "Si la humedad es alta: añadir aserrín en la mezcla de material café.",
                "Si la humedad es baja: añadir un poco más de material verde o un poco de agua.",
                "Evitar demasiado material seco.",
                "Evitar demasiado contacto con el sol."
              ]),
          new ListContent(
              /*title*/ "Recomendaciones de Mal Olor",
              /*content*/ [
                "Agregar material café como hojas y ramas secas.",
                "Voltear o mezclar la composta para ayudar a la aireación.",
                "Mantener una mezcla continua entre material café y material verde.",
                "Evitar el exceso de humedad.",
                "Agregar un poco de cal en la última capa para alejar a roedores y otros animales que pudieran ser atraídos por el mal olor."
              ]),
          new ListContent(
              /*title*/ "Recomendaciones de PH",
              /*content*/ [
                "El rango ideal es de 4.5 a 8.5.",
                "En caso de que el pH sea menor a 4.5, añadir cal agrícola a la mezcla para mantener estables los niveles de acidez durante todo el proceso de fermentación.",
                "En caso de que el pH sea mayor a 8.5, adicionar material más seco con mayor contenido en carbono (restos de poda, hojas secas o aserrín)."
              ]),
          new ListContent(
              /*title*/ "Temperatura",
              /*content*/ [
                "Medir la temperatura del interior de la composta, para esto se puede atar el termómetro a una varilla o palo que faciliten introducirlo.",
                "Los primeros tres o cuatro días tiene que llegar a una temperatura aproximada de 50 a 60°C que después tiene que disminuir progresivamente.",
                "Si no se calienta significa que la mezcla no está bien hecha. Tal vez está demasiado húmedo o demasiado seco o no hay suficiente materia orgánica rica en nitrógeno (hojas verdes, restos de poda).",
                "Evitar el volteo o mezclado en exceso.",
                "Si la temperatura supera los 70°C aumentar la aireación, si la temperatura no disminuye, la última opción es rehacer la composta."
              ])
        ]),
    new Section(
        //4
        /*title*/ "¿Dónde se puede compostar?",
        /*content*/ [
          new ListContent(
              /*title*/ "CAJAS O CONTENEDORES",
              /*content*/ [
                "lib/assets/img/plant.png",
                "Este método de compostaje consiste en colocar los residuos en un bote plástico perforado y realizar el mezclado de la composta según las necesidades de esta." +
                    "Es el más común y requiere de poco espacio (no necesariamente un jardín), es sencillo llevar un seguimiento de los parámetros de interés (temperatura, humedad y pH), con este método se tiene un control para evitar la invasión de animales como topos o ratas." +
                    "Como desventajas, requiere de una inversión inicial en el bote plástico que servirá como compostador, además se debe tener un mejor control de humedad y esto puede significar mezclar la composta hasta 2 veces por semana."
              ]),
          new ListContent(
              /*title*/ "JARDÍN",
              /*content*/ [
                "lib/assets/img/plant.png",
                "Este método consiste en colocar los residuos en un montón sobre la tierra del jardín en una caja de madera sin fondo, regarlo según la necesidad de humedad y mezclarlo al menos una vez por semana." +
                    "Tiene no es muy laborioso, puede mezclarse hasta cada 2 semanas." +
                    "Como desventajas, necesitas un espacio que puede varían desde 50cm*50cm hasta 1m*1m dependiendo la cantidad de residuos generados, requiere la inversión inicial de la caja o los pallets y además, este resulta más expuesto por lo que se debe tener cierto cuidado para evitar la proliferación de fauna nociva"
              ])
        ]),
    new Section(
        //5
        /*title*/ "¿Dónde quiere compostar?",
        /*content*/ [
          new ListContent(
            /*title*/ "CONTENEDOR O CAJAS",
            /*content*/ [
              new ListContent(
                  /*title*/ "Bote plástico",
                  /*content*/ [
                    "Conseguir un bate plástico, de preferencia de 20 L o si se prefiere más grande en consideración de la cantidad de residuos generados",
                    "Perforar orificios con diámetro de 2-3 cm, en la pared del bote para permitir que circule aire, se sugiere utilizar un taladro." +
                        "Los orificios deben estar separados entre sí. Hacer 3 filas de orificios cada 10 cm alrededor del contorno. Como se muestra a continuación.",
                    "Perforar 5 orificios en la base del bote.",
                    "Colocar una capa de 10 cm de paja, aserrín o poda para que absorba el exceso de humedad"
                  ]),
              new ListContent(
                  /*title*/ "Múltiple con cajas",
                  /*content*/ [
                    "Se pueden utilizar cajas de madera o plásticas que se utilizan para el transporte de frutas, botellas, etc. ",
                    "Conseguir malla metálica y recortarla en forma de cruz, como se muestra en la ilustración.",
                    "Colocar y sujetar la malla en las paredes y base de las cajas para que contenga los residuos.",
                    "Colocar una base de materia café (vegetación seca) en cada caja",
                    "Rellenar con los residuos orgánicos intercalando con capas de materia café.",
                    "Nota: procurar que la última capa sea de materia café."
                  ]),
            ],
          ),
          new ListContent(
              /*title*/ "JARDÍN",
              /*content*/ [
                new ListContent(
                    /*title*/ "Caja",
                    /*content*/ [
                      "Cavar un orificio de poca profundidad (30cm).",
                      "Colocar una caja sin fondo, o colocar 4 pallets simulando la caja, con el fin de que el material esté en contacto con el suelo.",
                      "Agregar los residuos previamente picados o cortados en trozos pequeños.",
                      "Agregar una capa de materia café (vegetación seca) de 10 cm, en el caso de la caja hecha con pallets, este resulta el equivalente a 4 cubetas de 20 lt.",
                      "Agregar una capa de material húmedo (vegetación verde) de 10 cm.",
                      "Agregar una capa más delgada de suelo.",
                      "Posteriormente alternar capas de material café y residuos orgánicos.",
                      "Nota: procurar que la última capa sea de material café."
                    ]),
                new ListContent(
                    /*title*/ "Malla metálica",
                    /*content*/ [
                      "Se requieren:" +
                          "Malla metálica 1m * 3m.\n" +
                          "3 o 4 postes de madera o de metal de poco más de 1m, preferentemente.\n" +
                          "Alambres de sujeción.\n",
                      "Unir la malla de alambre a los postes, con el alambre de sujeción o con clavos, formando un cilindro o un cubo",
                      "Colocar el cilindro en el jardín, colocando una capa de materia café (vegetación seca) seguida de una capa de materia húmeda (vegetación verde y residuos orgánicos), llenar el cilindro intercalando capas."
                    ]),
              ])
        ]),
    new Section(
        //6
        /*title*/ "¿Qué residuos generas?",
        /*content*/ []),
    new Section(
        //7
        /*title*/ "¿Cómo medir?",
        /*content*/ [
          new ListContent(
              /*title*/ "Temperatura",
              /*content*/ [
                "lib/assets/img/Termometro.flr",
                "Termometro Composta",
                "Si no se cuenta con un termómetro, utilice una barra de metal o madera. Esta debe introducirse en distintos puntos de la composta y estimar la temperatura en la que se encuentra, registrar dicha temperatura."
              ]),
          new ListContent(
              /*title*/ "Humedad",
              /*content*/ [
                "lib/assets/img/Humedad.flr",
                "Humedad",
                "Utilizar la técnica del puño, tomar un puñado de material y abrir la mano, el material debe quedar apelmazado, pero sin escurrir, registrar su aspecto. "
              ]),
          new ListContent(
              /*title*/ "pH",
              /*content*/ [
                "lib/assets/img/PH.flr",
                "PH",
                "Si se cuenta con tiras indicadoras tomar un poco de composta y mezclarla en agua para posteriormente introducir la tira y registrar el pH.\n" +
                    "Si no se cuenta con tiras, preparar una solución de col morada para hacer una determinación de acidez."
              ])
        ]),
    new Section(
        //8
        /*title*/ "Control de hoy",
        /*content*/ [
          new ListContent(
              /*title*/ "Temperatura",
              /*content*/ ["INPUT", "10", "°c"]),
          new ListContent(
              /*title*/ "pH",
              /*content*/ ["INPUT", "4.5", ""]),
          new ListContent(
              /*title*/ "Humedad",
              /*content*/ ["SELECT", ""]),
          new ListContent(
              /*title*/ "Animation",
              /*content*/ [
                "lib/assets/img/Control_Composta.flr",
                "Control_Corriendo"
              ]),
        ]),
    new Section(
        //9
        /*title*/ "Información",
        /*content*/ [
          new ListContent(
              /*title*/ "Temperatura",
              /*content*/ [
                "La temperatura tiene un amplio rango de variación en función de la fase del proceso." +
                    "El compostaje inicia a temperatura ambiente y puede subir hasta los 65°C sin necesidad de ninguna actividad antrópica (calentamiento externo), para llegar nuevamente durante la fase de maduración a una temperatura ambiente. Es deseable que la temperatura no decaiga demasiado rápido, ya que, a mayor temperatura y tiempo, mayor es la velocidad de descomposición y mayor higienización."
              ]),
          new ListContent(
              /*title*/ "pH",
              /*content*/ [
                "El pH del compostaje depende de los materiales de origen y varía en cada fase del proceso (desde 4.5 a 8.5). En los primeros estadios del proceso, el pH se acidifica por la formación de ácidos orgánicos. En la fase termófila, debido a la conversión del amonio en amoniaco, el pH sube y se alcaliniza el medio, para finalmente estabilizarse en valores cercanos al neutro." +
                    "El pH define la supervivencia de los microorganismos y cada grupo tiene pH óptimos de crecimiento y multiplicación. La mayor actividad bacteriana se produce a pH 6,0- 7,5, mientras que la mayor actividad fúngica se produce a pH 5,5-8,0. El rango ideal es de 5,8 a 7,2."
              ]),
          new ListContent(
              /*title*/ "Humedad",
              /*content*/ [
                "La humedad es un factor importante del proceso. Si falta agua, el proceso se ralentiza y la descomposición no es completa. Por el contrario, si aportamos agua en exceso, esta tiende a ocupar los poros desplazando el aire y provocando que el material se pudra." +
                    "La humedad óptima para el compost se sitúa alrededor del 55%, aunque varía dependiendo del estado físico y tamaño de las partículas, así como del sistema empleado para realizar el compostaje"
              ]),
          new ListContent(
              /*title*/ "¿Cómo se encuentra su composta hoy?",
              /*content*/ [
                new ListContent(
                    /*title*/ "Húmeda",
                    /*content*/ [
                      "Si al realizar la técnica del puño (que estas palabras redireccionen a la sección de cómo medir si el usuario las selecciona) y abrir el puño la composta escurre"
                    ]),
                new ListContent(
                    /*title*/ "Adecuada",
                    /*content*/ [
                      "Si al realizar la técnica del puño, la composta mantiene la forma y no escurre"
                    ]),
                new ListContent(
                    /*title*/ "Seca",
                    /*content*/ [
                      "’Si al realizar la técnica del puño, la composta se desmorona y no mantiene la forma de esfera"
                    ])
              ])
        ]),
    new Section(
        //10
        /*title*/ "Mis compostas",
        /*content*/ [
          "lib/assets/img/None.flr",
          "Nueva Composta",
        ]),
    new Section(
        //11
        /*title*/ "Compostas image",
        /*content*/ [
          "lib/assets/img/contenedor.png",
          "lib/assets/img/jardin.png",
        ]),
    new Section(
        //12
        /*title*/ "Menu",
        /*content*/ [
          new ListContent(
              /*title*/ "Pregutas Frecuentes",
              /*content*/ [
                "lib/assets/img/None.flr",
                "",
                "",
                Colors.lightBlue,
                1
              ]),
          new ListContent(
              /*title*/ "Mis compostas",
              /*content*/ [
                "lib/assets/img/None.flr",
                "",
                "/Home",
                Colors.blue,
                3
              ]),
          new ListContent(
              /*title*/ "Recomendaciones",
              /*content*/ [
                "lib/assets/img/None.flr",
                "",
                "/Home",
                Colors.deepOrange,
                2
              ]),
        ]),
    new Section(
        //13
        /*title*/ "Menu",
        /*content*/ [
          new ListContent(
              /*title*/ "¿Cómo medir?",
              /*content*/ [
                "lib/assets/img/None.flr",
                "",
                "/MeasuresGuide",
                Colors.blueAccent,
                2
              ]),
          new ListContent(
              /*title*/ "Eliminar",
              /*content*/ [
                "lib/assets/img/None.flr",
                "",
                "",
                Colors.blueAccent,
                2
              ]),
          new ListContent(
              /*title*/ "Estadísticas",
              /*content*/ [
                "lib/assets/img/None.flr",
                "",
                "",
                Colors.blueAccent,
                2
              ])
        ]),
    new Section(
        //14
        /*title*/ "Menu",
        /*content*/ [
          new ListContent(
              /*title*/ "Acerca de",
              /*content*/ [
                "lib/assets/img/None.flr",
                "",
                "/About",
                Colors.blueAccent,
                2 //state
              ]),
          new ListContent(
              /*title*/ "Guía",
              /*content*/ [
                "lib/assets/img/None.flr",
                "",
                "/Welcome",
                Colors.blueAccent,
                2 //
              ]),
        ])
  ];
}

class ListContent {
  String title;
  List<dynamic> content;
  ListContent(String title, List<dynamic> content) {
    this.title = title;
    this.content = content;
  }
}

class Section {
  String title;
  List<dynamic> content;
  List<String> resources;

  Section(String title, List<dynamic> content) //,List<String> resources)
  {
    this.title = title;
    this.content = content;
    //this.resources=resources;
  }
}
