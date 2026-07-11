# language: es
# HU-27 (US27)

Feature: Recordatorio de sesión
  Como usuario con sesión programada
  Quiero recibir recordatorios antes de que empiece mi sesión
  Para no olvidarme y estar preparado

  Scenario Outline: Recordatorio 24 horas antes
    Given que el <usuario> tiene una <sesion> programada para el día siguiente
    When faltan 24 horas para el inicio de la sesión
    Then el sistema envía una notificación con los detalles de la sesión

    Examples:
      | usuario | sesion              | notificacion_enviada |
      | Tutor01 | Sesión de Cálculo I | Sí                   |

  Scenario Outline: Recordatorio 1 hora antes
    Given que la <sesion> del <usuario> comienza en 1 hora
    When se cumple el tiempo restante
    Then el sistema envía la notificación "¡Tu sesión comienza en 1 hora!"

    Examples:
      | usuario    | sesion              | mensaje                          |
      | Aprendiz03 | Sesión de Física II | "¡Tu sesión comienza en 1 hora!" |
