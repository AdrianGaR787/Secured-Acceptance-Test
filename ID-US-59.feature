Feature: Encuesta de satisfacción al ciudadano
 
  Como Policía o Serenazgo,
  quiero enviar una encuesta breve al ciudadano al cerrar el caso,
  para medir satisfacción y detectar oportunidades de mejora.

  Scenario: Encuesta respondida
    Given el ciudadano ha dado su consentimiento para recibir comunicaciones
    When se cierra el incidente
    Then se envía la encuesta al ciudadano
    And las respuestas se guardan en el expediente

  Scenario: Ciudadano sin consentimiento
    Given el ciudadano no dio opt-in para comunicaciones
    When se cierra el incidente
    Then no se envía la encuesta
    And se registra la condición en el caso