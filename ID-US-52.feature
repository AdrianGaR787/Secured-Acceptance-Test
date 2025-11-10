Feature: Asignación por especialidad y equipamiento
 
  Como Policía en estación,
  quiero asignar unidades considerando especialidades y equipamiento,
  además de ETA y disponibilidad,
  para mejorar tiempos de respuesta y calidad de atención.

  Scenario: Autoasignación con match
    Given hay varias unidades disponibles para asignación
    When el operador pulsa “Asignación automática”
    Then se sugiere la unidad con mejor match
    And se notifica al receptor de la unidad asignada

  Scenario: Selección manual con motivo
    Given que existe una recomendación activa de asignación
    When el operador selecciona otra unidad e ingresa el motivo
    Then la unidad se reasigna al incidente
    And el motivo queda registrado en la bitácora