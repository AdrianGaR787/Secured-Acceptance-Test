Feature: Webhook de incidentes

  Como Policía (estación),
  quiero publicar cambios de incidentes a sistemas aliados,
  para coordinar acciones entre entidades.

  Scenario: Entrega exitosa del webhook
    Given un suscriptor activo configurado
    When se cierra un incidente
    Then se envía el webhook con respuesta 200 OK
    And se registra la entrega en los logs

  Scenario: Error en entrega y reintento
    Given el suscriptor responde con error 5xx
    When se dispara el webhook
    Then el sistema reintenta automáticamente con backoff
    And se deja trazabilidad del fallo en los logs