Feature: Modo noche / alto contraste
 
  Como Serenazgo o Policía,
  quiero activar un modo de alto contraste,
  para operar con legibilidad en entornos de baja luz.

  Scenario: Activación manual de modo noche
    Given el usuario está en un entorno de poca luz
    When activa la opción “Modo noche”
    Then la UI cambia a paleta de colores oscura
    And la preferencia se guarda para futuras sesiones