# language: es
# HU-25 (US25)

Feature: Bloqueo de usuarios
  Como usuario
  Quiero bloquear a otro usuario
  Para protegerme de interacciones no deseadas o inapropiadas

  Scenario Outline: Bloqueo exitoso
    Given que el <usuario> selecciona "Bloquear usuario" desde el menú del chat
    When confirma la acción
    Then el usuario bloqueado no puede enviar mensajes ni ver su perfil

    Examples:
      | usuario | bloqueo_exitoso |
      | Tutor24 | Sí              |

  Scenario Outline: Desbloqueo
    Given que el <usuario> accede a su lista de bloqueados y selecciona "Desbloquear"
    When confirma la acción
    Then puede volver a contactar a esa persona

    Examples:
      | usuario    | desbloqueo_exitoso |
      | Aprendiz25 | Sí                 |
