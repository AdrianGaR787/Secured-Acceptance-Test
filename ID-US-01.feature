Feature: Onboarding inicial y selección de rol

  Como Serenazgo/Policía
  Quiero un onboarding breve que me explique lo esencial
  Para poder elegir mi rol/subrol y gestionar permisos operativos
  Y empezar a usar la app de forma informada y rápida.

  
  Scenario: Onboarding exitoso
    Given un usuario abre la app por primera vez
    When recorre las pantallas y selecciona su rol/subrol
    Then el sistema marca "onboarding completado"
    And muestra el botón "Empezar" que lleva a Login

  
  Scenario: Omitir onboarding
    Given el usuario está en la segunda pantalla del onboarding
    When pulsa "Omitir"
    Then se registra que omitió el onboarding
    And navega directo a Login (HU02)

  
  Scenario: Permisos diferidos
    Given la pantalla explica por qué se necesita la ubicación
    When el usuario pulsa "Ahora no"
    Then el permiso no se solicita en ese momento
    And se muestra cómo activarlo luego en Ajustes de la app

  
  Scenario: Reapertura tras completar
    Given el usuario ya completó el onboarding previamente
    When vuelve a abrir la app
    Then se omiten las pantallas de onboarding
    And se va directo a Login (HU02)
