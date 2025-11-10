Feature: Ruta segura y recálculo

  Como Serenazgo/Policía,
  quiero obtener la mejor ruta con recálculo por tráfico o cierres,
  para llegar en el menor tiempo posible.

  Scenario: Recalcular por tráfico
    Given la navegación está activa
    When aumenta la congestión
    Then el sistema recalcula la ruta
    And actualiza la ETA.

  Scenario: Cierre vial
    Given existe un cierre en el trayecto
    When la unidad se aproxima al cierre
    Then el sistema evita el tramo
    And propone una alternativa.