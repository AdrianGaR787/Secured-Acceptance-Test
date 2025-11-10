Feature: Mapa con filtros por prioridad y zona

  Como Policía,
  quiero ver incidentes en mapa filtrados por prioridad, tipo, tiempo y jurisdicción,
  para decidir respuesta.

  Scenario: Filtro de alta prioridad
    Given hay incidentes de varias prioridades
    When el usuario aplica filtro "Alta"
    Then el mapa y la lista muestran solo alta prioridad.

  Scenario: Persistencia
    Given el usuario configuró filtros
    When regresa a la vista de mapa
    Then los filtros previos se mantienen activos.
