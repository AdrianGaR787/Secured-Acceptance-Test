Feature: Chat por incidente

  Como Serenazgo/Policía,
  quiero coordinar por chat dentro de cada incidente,
  para sincronizar acciones y evidencias.

  Scenario: Mensaje entregado
    Given existe un incidente con canal de chat
    When el usuario envía un mensaje
    Then el receptor lo recibe
    And el mensaje queda con doble check.

  Scenario: Envío offline
    Given el dispositivo está sin conectividad
    When el usuario envía un mensaje
    Then el mensaje queda "pendiente"
    And al reconectar se entrega con la hora real.
