Feature: Crear reporte con multimedia
 
  Como Serenazgo/Policía,
  quiero registrar incidentes con tipo, descripción, ubicación y adjuntos,
  para documentar evidencia en el lugar.

  Scenario: Registro exitoso
    Given el formulario tiene campos obligatorios completos
    When el usuario pulsa "Guardar"
    Then se crea el incidente
    And aparece en mapa y lista.

  Scenario: Falla de adjunto
    Given un video excede el límite permitido
    When el usuario intenta adjuntarlo
    Then la app muestra un mensaje de error
    And ofrece comprimirlo o continuar sin adjunto.