Feature: Registro de llamadas 105

  Como Policía (estación),
  quiero registrar llamadas y vincularlas a incidentes,
  para no perder contexto operativo.

  Scenario: Vincular llamada a caso existente
    Given una llamada sobre un caso activo
    When se busca el código del incidente y se vincula la llamada
    Then la nota queda registrada en el expediente
    And la llamada aparece en el historial del caso

  Scenario: Crear incidente desde llamada
    Given una llamada sin caso previo
    When se guarda la llamada
    Then se crea un nuevo incidente asociado
    And se notifica al tablero de incidentes