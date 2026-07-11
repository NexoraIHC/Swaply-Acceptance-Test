# language: es
# HU-29 (US29)

Feature: Cancelar sesión programada
  Como usuario con sesión programada
  Quiero cancelar una sesión con anticipación
  Para notificar al otro usuario y evitar inconvenientes

  Scenario Outline: Cancelación con anticipación suficiente
    Given que el <usuario> cancela la <sesion> con más de 2 horas de anticipación
    When confirma la cancelación con un motivo
    Then el otro usuario recibe notificación y la sesión se elimina sin penalidad

    Examples:
      | usuario    | sesion           | penalidad |
      | Aprendiz04 | Sesión de Inglés | No        |

  Scenario Outline: Cancelación tardía (Negativo)
    Given que el <usuario> cancela la <sesion> con menos de 1 hora de anticipación
    When confirma la cancelación
    Then el sistema registra la cancelación tardía y muestra "Esto afectará tu reputación"

    Examples:
      | usuario | sesion                | mensaje                       |
      | Tutor04 | Sesión de Estadística | "Esto afectará tu reputación" |
