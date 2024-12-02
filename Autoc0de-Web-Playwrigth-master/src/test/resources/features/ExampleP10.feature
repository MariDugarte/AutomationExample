Feature: Principales búsquedas Plataforma10

  @ExampleTag
  Scenario Outline: Se realizan distintas búsquedas en el sitio web de Plataforma10
    Given La página de inicio de Plataforma10
    When Se completa el Origen: "<origen>"
    And Se completa el Destino: "<destino>"
    And Se completa la Fecha de Partida: "<partida>"
    And Se completa la Cantidad de Pasajeros: "<pasajeros>"
    And Se hace click en el botón "Buscar Pasajes" de la página de inicio
    Then Se validan los resultados obtenidos OrigenPáginaDeResultados: "<origenR>" DestinoPáginaDeResultados: "<destinoR>"
    Examples:
      | origen                                                         | destino                                                                     | partida     | pasajeros    | origenR          | destinoR          |
      | Retiro (Capital Federal - Ciudad de Buenos Aires - ARGENTINA)  | Mar del Plata (Buenos Aires - Mar del Plata - ARGENTINA)                    | 03-12-2024  | 1            | Retiro           | Mar del Plata     |
      | Retiro (Capital Federal - Ciudad de Buenos Aires - ARGENTINA)  | Córdoba (Córdoba - Cordoba  - ARGENTINA)                                    | 03-12-2024  | 2            | Retiro           | Córdoba           |
      | Mendoza (Mendoza - Mendoza - ARGENTINA)                        | San Rafael (Mendoza - San Rafael - ARGENTINA)                               | 03-12-2024  | 1            | Mendoza          | San Rafael        |
      | Mendoza (Mendoza - Mendoza - ARGENTINA)                        | Santiago de Chile (Región XIII - Metropolitana - Santiago de Chile - CHILE) | 03-12-2024  | 2            | Mendoza          | Santiago de Chile |
