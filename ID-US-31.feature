Feature: Mantenimiento de geocercas

  Como Policía (estación),
  quiero crear y editar geocercas,
  para reflejar cambios de jurisdicción y cobertura.

  Scenario: Crear geocerca
    Given el diseño de límites ha sido aprobado
    When se dibuja y guarda el polígono
    Then la capa de geocercas se publica
    And las alertas asociadas se activan

  Scenario: Bloqueo por solape inválido
    Given un polígono se superpone con otro existente
    When se intenta guardar la geocerca
    Then la aplicación bloquea la publicación
    And se muestra un mensaje explicando el solape