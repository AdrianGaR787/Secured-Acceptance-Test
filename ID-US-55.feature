Feature: Alerta silenciosa botón de pánico
 
  Como Sereno o Policía en campo,
  quiero activar una alerta silenciosa con mi ubicación,
  para pedir apoyo sin exponerme.

  Scenario: Activación de alerta silenciosa
    Given el agente se encuentra en una situación de riesgo
    When mantiene pulsado el botón de pánico
    Then se envía la alerta con ubicación en tiempo real
    And se notifica a central y unidades cercanas

  Scenario: Cancelación de alerta
    Given la alerta silenciosa sigue activa
    When el agente ingresa su PIN o usa biometría para cancelar
    Then la alerta se cancela
    And se registra como “accidental/falso positivo” en la bitácora