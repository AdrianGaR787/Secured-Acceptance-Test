Feature: Añadir evidencias en curso
 
  Como Serenazgo/Policía,
  quiero adjuntar nuevas evidencias durante la atención,
  para documentar el progreso.

  Scenario: Video cargado
    Given el incidente está "En curso"
    When el usuario adjunta un video válido
    Then se agrega al expediente
    And queda visible en "Evidencias".

  Scenario: Red inestable
    Given la conexión es intermitente
    When el usuario envía una foto
    Then la app la coloca en cola
    And notifica al completarse.