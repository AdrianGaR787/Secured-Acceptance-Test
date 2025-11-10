Feature: Alerta por espacio insuficiente

  Como Serenazgo o Policía,
  quiero recibir alertas cuando queda poco espacio para evidencias,
  para gestionar correctamente los adjuntos y evitar pérdida de datos.

  Scenario: Umbral de espacio alcanzado
    Given queda menos de 500 MB disponibles
    When el usuario intenta capturar un video
    Then aparece una alerta indicando espacio insuficiente
    And se ofrecen opciones para liberar espacio o posponer la captura