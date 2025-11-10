Feature: Mapa de calor hotspots

  Como Policía (estación),
  quiero ver hotspots por 1h, 24h o 7d,
  para redistribuir patrullas.

  Scenario: Ventana 24h
    Given existen concentraciones de incidentes en 24h
    When el usuario selecciona "24h"
    Then el heatmap refleja los hotspots del periodo
    And permite exportar la vista.

  Scenario: Cambiar ventana
    Given la vista actual es 24h
    When el usuario cambia a "1h"
    Then el mapa recalcula la intensidad con datos de la última hora.