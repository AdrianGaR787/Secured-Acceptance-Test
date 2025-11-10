Feature: Panel de analítica operativa

  Como Policía (estación),
  quiero ver KPIs por zona/turno y comparativos,
  para tomar decisiones tácticas.

  Scenario: Comparativo semanal de KPIs
    Given un rango de la semana actual
    When activo “Comparar semana previa”
    Then se muestran las variaciones por KPI
    And se resaltan desviaciones significativas

  Scenario: Exportar KPIs filtrados a CSV
    Given los KPIs están filtrados por zona y periodo
    When el usuario pulsa “Exportar CSV”
    Then se descarga un archivo CSV con los datos visibles en el panel