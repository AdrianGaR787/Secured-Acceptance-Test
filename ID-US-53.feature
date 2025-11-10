Feature: Checklist de arribo por tipo de incidente
 
  Como Serenazgo o Policía,
  quiero ver y completar un checklist al llegar según el tipo de incidente,
  para asegurar que no se omitan pasos críticos antes de marcar “En curso”.

  Scenario: Arribo con checklist completo
    Given el agente marca “En sitio” en un incidente
    When completa todos los ítems del checklist y guarda
    Then el incidente cambia a estado “En curso”
    And se registra toda la información en la bitácora

  Scenario: Salto justificado del checklist
    Given el agente está en la pantalla del “Checklist de arribo”
    When pulsa “Saltar” e ingresa un motivo
    Then puede continuar con el incidente
    And el motivo queda registrado y auditado en la bitácora