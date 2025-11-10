Feature: Estado global de sincronización

  Como Serenazgo o Policía,
  quiero ver el estado de conectividad y la cola de envío,
  para saber qué información está pendiente de sincronizar.

  Scenario: Reconexión y procesamiento de cola
    Given hay 3 elementos pendientes en la cola
    When la conexión a Internet se restablece
    Then la cola se procesa automáticamente
    And aparece un mensaje indicando “3 sincronizados”