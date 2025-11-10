Feature: Relevo de turno con checklist e inventario
 
  Como Policía o Serenazgo en escena,
  quiero realizar el relevo de turno con checklist e inventario,
  para asegurar que la unidad y equipos estén completos y listos para despacho.

  Scenario: Relevo aprobado
    Given el agente completa el checklist sin faltantes críticos
    When firma el relevo
    Then la unidad queda habilitada para despacho
    And se registra el relevo en el historial

  Scenario: Faltante crítico en checklist
    Given el checklist detecta un faltante crítico
    When el agente intenta finalizar el relevo
    Then el sistema bloquea el despacho
    And solicita registrar la corrección o reemplazo antes de continuar