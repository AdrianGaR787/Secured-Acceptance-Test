Feature: Idioma y formatos locales

  Como Serenazgo o Policía,
  quiero usar la app en es-PE con formatos locales,
  para comprender fechas, horas y topónimos correctamente.

  Scenario: Cambio de idioma a es-PE
    Given el usuario tiene una sesión activa
    When se cambia la configuración de idioma a es-PE
    Then todos los textos y formatos de fechas/horas se localizan correctamente
    And la preferencia se guarda para futuras sesiones