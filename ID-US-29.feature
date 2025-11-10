Feature: Gestión de catálogos operativos

  Como Policía (estación),
  quiero mantener catálogos (tipos, prioridades),
  para estandarizar el registro.

  Scenario: Publicar nuevo tipo en catálogo
    Given un tipo validado
    When el administrador pulsa “Publicar”
    Then el nuevo tipo aparece en los formularios
    And queda registrado en el historial de cambios

  Scenario: Rollback de catálogo
    Given una versión publicada con error
    When el administrador ejecuta “Revertir”
    Then la versión anterior del catálogo vuelve a estar activa
    And se registra el cambio en la auditoría