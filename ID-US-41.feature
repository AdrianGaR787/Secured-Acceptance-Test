Feature: Reintentos y resolución de conflictos

  Como Serenazgo o Policía,
  quiero que la app reintente envíos y resuelva conflictos de edición,
  para evitar pérdida de datos y mantener consistencia.

  Scenario: Conflicto multi-dispositivo
    Given dos usuarios han editado el mismo reporte simultáneamente
    When ambos sincronizan sus cambios
    Then la aplicación resuelve el conflicto usando la estrategia definida
    And se notifica a los usuarios sobre la resolución