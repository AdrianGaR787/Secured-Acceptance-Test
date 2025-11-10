Feature: Registro offline garantizado

  Como Serenazgo/Policía,
  quiero trabajar sin señal con borrador y cola,
  para no perder reportes.

  Scenario: Sincroniza al reconectar
    Given existen reportes en cola
    When el dispositivo recupera conectividad
    Then la app envía automáticamente
    And cambia el estado a "enviado".

  Scenario: Conflicto de edición
    Given dos dispositivos editaron el mismo reporte
    When ambos sincronizan
    Then se aplica la estrategia de resolución
    And se notifica el conflicto resuelto.