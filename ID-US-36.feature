Feature: Integración con cámaras municipales

  Como Policía (estación),
  quiero consultar cámaras cercanas y capturar fotogramas,
  para validar reportes y tomar decisiones operativas.

  Scenario: Captura de fotograma exitosa
    Given un feed de cámara disponible
    When el operador captura un fotograma
    Then el fotograma se adjunta como evidencia al caso
    And se registra el acceso en la auditoría

  Scenario: Feed de cámara no disponible
    Given la cámara está fuera de servicio
    When el operador intenta abrir el feed
    Then se muestra un mensaje claro indicando el estado
    And se ofrecen opciones de reintento