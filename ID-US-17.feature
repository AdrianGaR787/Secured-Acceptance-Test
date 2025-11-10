Feature: Solicitar refuerzo de unidades
 
  Como Serenazgo/Policía,
  quiero pedir apoyo a unidades cercanas,
  para controlar situaciones de riesgo.

  Scenario: Apoyo aceptado
    Given un incidente de alto riesgo está "En curso"
    When el usuario solicita apoyo
    Then las unidades cercanas reciben la alerta
    And la primera que acepta queda co-asignada.

  Scenario: Sin respuesta
    Given no hay aceptación dentro del umbral
    When expira el tiempo de espera
    Then el sistema reintenta
    And propone escalar.