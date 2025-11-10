Feature: Detección de “hombre caído” y SOS prolongado

  Como Serenazgo o Policía en patrulla (a pie o motorizada),
  quiero que la app detecte inmovilidad prolongada o un SOS mantenido,
  para alertar a estación con mi ubicación y recibir apoyo oportuno.

  Scenario: Inmovilidad detectada
    Given el agente permanece inmóvil por el umbral configurado
    When la app confirma el evento
    Then se envía una alerta a estación con ubicación en tiempo real
    And se crea una tarea de apoyo para la unidad

  Scenario: Cancelación por falso positivo
    Given que se activó la cuenta regresiva de alerta
    When el agente pulsa “Cancelar” e ingresa un motivo
    Then se anula el envío de la alerta
    And el motivo queda registrado y auditado