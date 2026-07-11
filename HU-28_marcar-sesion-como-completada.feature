# language: es
# HU-28 (US28)

Feature: Marcar sesión como completada
  Como tutor
  Quiero marcar una sesión como completada una vez finalizada
  Para que el sistema registre el intercambio y habilite la calificación mutua

  Scenario Outline: Marcar sesión finalizada como completada
    Given que la <sesion> del <tutor> ya concluyó su horario programado
    When presiona el botón "Marcar como completada"
    Then el sistema registra la sesión como completada y habilita la calificación para ambos usuarios

    Examples:
      | tutor   | sesion            | estado_sesion |
      | Tutor02 | Sesión de Química | Completada    |

  Scenario Outline: Intentar completar una sesión que aún no inicia (Negativo)
    Given que la <sesion> del <tutor> aún no llega a su horario programado
    When intenta presionar "Marcar como completada"
    Then el sistema muestra "La sesión aún no ha llegado a su hora programada"

    Examples:
      | tutor   | sesion                 | mensaje                                            |
      | Tutor03 | Sesión de Programación | "La sesión aún no ha llegado a su hora programada" |
