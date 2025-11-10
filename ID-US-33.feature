Feature: Aprobación de exportes por supervisor

  Como Policía (estación),
  quiero aprobar exportes sensibles (custodia/reportes),
  para controlar y gobernar el uso de datos.

  Scenario: Aprobar exporte pendiente
    Given un paquete está en estado “Pendiente de aprobación”
    When el supervisor lo aprueba
    Then la descarga del paquete se habilita
    And se registra la acción con usuario y fecha en la bitácora

  Scenario: Rechazar exporte con motivo
    Given un paquete está en estado “Pendiente de aprobación”
    When el supervisor lo rechaza e ingresa el motivo
    Then el paquete permanece bloqueado para descarga
    And se notifica al solicitante del rechazo