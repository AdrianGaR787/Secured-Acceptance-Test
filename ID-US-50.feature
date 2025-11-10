Feature: Notificación al ciudadano con ETA

  Como Policía,
  quiero enviar la ETA al ciudadano que optó por recibir notificaciones,
  para reducir llamadas repetidas y la ansiedad del usuario.

  Scenario: Enviar ETA inicial
    Given el ciudadano ha aceptado recibir notificaciones
    When se asigna una unidad al incidente
    Then se envía la ETA inicial al ciudadano
    And queda registrado el envío en el expediente

  Scenario: Actualizar ETA por cambios en la ruta
    Given que la ETA cambió debido a tráfico u otros factores
    When se recalcula la ruta de la unidad
    Then se envía una actualización de ETA al ciudadano
    And se registra la actualización en la auditoría del expediente