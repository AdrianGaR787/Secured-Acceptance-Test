Feature: Moderación de reportes ciudadanos
 
  Como Policía (estación),
  quiero aprobar o rechazar reportes ciudadanos con severidad,
  para garantizar calidad y trazabilidad en la información recibida.

  Scenario: Aprobar reporte
    Given un reporte ciudadano está en estado “Pendiente”
    When el moderador selecciona “Aprobar”
    Then el reporte pasa a la cola de despacho
    And se registra la aprobación en la bitácora.

  Scenario: Rechazar con motivo
    Given un reporte ciudadano es inconsistente
    When el moderador elige “Rechazar” e ingresa el motivo
    Then el reporte queda en estado “Rechazado”
    And se audita el motivo junto con el registro del moderador.