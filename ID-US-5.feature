Feature: Broadcast de emergencia

  Como Policía (estación/campo),
  quiero enviar broadcast por zona y prioridad,
  para alertar riesgos a todas las unidades pertinentes.

  Scenario: Envío distrital
    Given existe una amenaza en el distrito X
    When el operador emite un broadcast para el distrito X
    Then las unidades del distrito reciben la alerta
    And acusan lectura.

  Scenario: Pendientes sin acuse
    Given hay unidades sin acuse transcurrido el umbral
    When el sistema ejecuta el reintento
    Then reenvía el broadcast
    And notifica al emisor los pendientes.