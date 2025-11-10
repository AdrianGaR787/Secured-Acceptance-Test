Feature: Recuperación de contraseña con 2FA

  Como usuario (Serenazgo/PNP),
  quiero recuperar mi contraseña mediante verificación 2FA (correo/SMS),
  para restablecer el acceso de forma segura.

  Scenario: Recuperación exitosa
    Given el usuario solicitó recuperación de contraseña
    When ingresa el token válido y define una nueva clave conforme a política
    Then el sistema confirma el restablecimiento
    And registra la acción.

  Scenario: Token inválido o vencido
    Given el usuario recibió un token incorrecto o expirado
    When intenta validarlo
    Then el sistema muestra error
    And habilita reenviar (con límites).
