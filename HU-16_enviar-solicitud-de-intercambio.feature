# language: es
# HU-16 (US16)

Feature: Enviar solicitud de intercambio
  Como aprendiz
  Quiero enviar una solicitud de intercambio a un tutor
  Para iniciar una sesión de aprendizaje con él

  Scenario Outline: Solicitud enviada con mensaje
    Given que el <aprendiz> escribe un mensaje personalizado
    When presiona "Enviar solicitud"
    Then el tutor recibe la notificación y el aprendiz ve "Solicitud enviada. Espera la respuesta"

    Examples:
      | aprendiz   | mensaje_incluido |
      | Aprendiz22 | Sí               |

  Scenario Outline: Solicitud duplicada (Negativo)
    Given que el <aprendiz> ya tiene una solicitud pendiente con ese <tutor>
    When intenta enviar otra solicitud
    Then el sistema muestra "Ya tienes una solicitud pendiente con este tutor"

    Examples:
      | aprendiz   | tutor      | mensaje                                            |
      | Aprendiz23 | Carla Ruiz | "Ya tienes una solicitud pendiente con este tutor" |
