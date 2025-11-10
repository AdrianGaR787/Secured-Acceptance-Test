Feature: Gestión de usuarios y permisos
 
  Como Policía (estación),
  quiero gestionar usuarios y permisos granulares,
  para asegurar consistencia y control de acceso.

  Scenario: Alta de usuario
    Given un nuevo agente
    When se registra y se asignan permisos
    Then el agente recibe credenciales
    And el usuario queda activo en el sistema

  Scenario: Bloquear usuario
    Given un usuario activo
    When el administrador pulsa “Bloquear”
    Then el usuario no puede iniciar sesión
    And la acción queda registrada en la auditoría