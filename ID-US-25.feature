Feature: Reporte de turno en PDF

  Como Policía (estación),
  quiero generar un reporte consolidado del turno,
  para documentar la gestión.

  Scenario: Generar y descargar reporte
    Given finalizó el turno
    When el operador selecciona rango de fecha y turno y pulsa “Generar”
    Then se crea un PDF firmado con la información consolidada
    And el reporte queda registrado en el histórico

  Scenario: Intentar generar reporte en rango sin datos
    Given el rango seleccionado no tiene incidentes
    When el operador pulsa “Generar”
    Then el sistema informa “Sin datos disponibles”
    And no se crea ningún archivo