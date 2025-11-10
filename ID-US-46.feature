Feature: POIs y zonas seguras

  Como Serenazgo o Policía,
  quiero consultar POIs cercanos y navegar hacia ellos,
  para mejorar la eficiencia del despacho y apoyo en campo.

  Scenario: Navegar a hospital cercano
    Given hay un herido en vía pública
    When el usuario selecciona el hospital más cercano
    Then se muestra la ruta y el tiempo estimado de llegada (ETA)
    And se registra la derivación en el sistema