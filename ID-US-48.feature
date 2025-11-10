Feature: Zonas de riesgo temporales
 
  Como Policía (estación),
  quiero definir zonas o eventos con vigencia temporal,
  para alertar a las unidades al ingresar o salir y reforzar la cobertura.

  Scenario: Evento masivo temporal
    Given hay un concierto programado de 20:00 a 23:00
    When se crea la zona temporal correspondiente
    Then las unidades reciben alertas al cruzar la zona
    And se recomienda refuerzo de cobertura en la zona