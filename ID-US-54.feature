Feature: Anotaciones y blur en evidencias

  Como Sereno o Policía,
  quiero anotar en fotos (flecha, rectángulo, pincel, texto) y difuminar rostros o placas,
  para resaltar hallazgos y proteger la privacidad de las personas.

  Scenario: Marcado y difuminado de evidencia
    Given una foto abierta como evidencia
    When el usuario agrega una flecha y aplica blur a un rostro
    Then se guarda la versión anotada
    And la miniatura refleja los cambios realizados

  Scenario: Manejo de archivo grande
    Given la imagen editada supera el límite permitido
    When el usuario intenta adjuntarla
    Then la aplicación ofrece comprimir el archivo o guardarlo como borrador
    And adjunta la versión optimizada manteniendo legibilidad