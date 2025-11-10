Feature: Cierre de sesión e inactividad

  Como Serenazgo/Policía,
  quiero cerrar sesión manualmente o por inactividad,
  para proteger el acceso en dispositivos compartidos.

  Scenario: Logout manual
    Given la sesión está activa
    When el usuario pulsa "Cerrar sesión"
    Then la app retorna a la pantalla de login
    And elimina datos temporales.

  Scenario: Auto-logout
    Given el usuario está inactivo por más del umbral configurado
    When se detecta inactividad
    Then la app cierra la sesión
    And muestra el formulario de login.
