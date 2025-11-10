Feature: Video en vivo vinculado al incidente

  Como Policía o Serenazgo en escena,
  quiero transmitir video en vivo al despacho durante la atención,
  para coordinar mejor y registrar clips como evidencia.

  Scenario: Live iniciado desde campo
    Given el agente abre la ficha del incidente
    When pulsa “Transmitir en vivo”
    Then el despacho ve el streaming en tiempo real
    And se adjunta un clip automáticamente al cierre del incidente

  Scenario: Reconexión por pérdida de señal
    Given que la transmisión en vivo estaba activa
    When se interrumpe la conexión
    Then la app intenta reconectar automáticamente
    And marca la interrupción en la línea de tiempo del incidente