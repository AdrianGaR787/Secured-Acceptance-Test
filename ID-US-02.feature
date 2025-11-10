Feature: Inicio de sesión con OTP
  
  Como usuario (Serenazgo/PNP),
  quiero iniciar sesión con mi rol, credenciales y un OTP,
  para acceder solo a las funciones operativas que necesito de forma segura.
  
  Scenario: Inicio de sesión exitoso
    Given que el usuario abrió la App y está en “Iniciar Sesión”
    When selecciona su rol
    And ingresa usuario y contraseña válidos
    And solicita e ingresa el OTP correcto dentro de 2 minutos
    And toca “Ingresar”
    Then la App valida credenciales y OTP
    And redirige al panel del usuario según su rol
    And muestra un toast “Bienvenido, [nombre]”.

  Scenario: Intentos fallidos y bloqueo
    Given que el usuario está en “Iniciar sesión”
    When ingresa usuario/contraseña u OTP incorrectos en 5 minutos
    Then el sistema bloquea la cuenta durante 15 minutos
    And muestra “Acceso bloqueado temporalmente. Intenta en 15 min o solicita soporte”.

  Scenario: OTP expirado
    Given que el usuario solicitó un OTP hace más de 2 minutos
    When intenta usarlo
    Then se rechaza por expiración
    And se ofrece reenviar un nuevo OTP.
