Feature: Capas de Mapa

  Como Policía (estación),
  quiero aplicar filtros y capas en el mapa interactivo,
  para acceder rápidamente a la información pertinente.

  Scenario: Aplicar filtros y capas en vista satélite
    Given el mapa está en “Vista - Satélite”
    When el usuario aplica los filtros y capas correspondientes
    Then el mapa carga los filtros y capas definidos
    And se visualiza el cambio en tiempo real