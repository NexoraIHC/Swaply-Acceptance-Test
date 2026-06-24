# language: es
# HU-11 (US11)

Feature: Usar chat interno
  Como estudiante aprendiz
  Quiero tener un chat simple dentro de la aplicación
  Para coordinar la sesión sin tener que compartir mi número de WhatsApp

  Scenario Outline: Enviar y recibir mensajes
    Given que mi solicitud fue aceptada y estoy en la ventana de chat con el <tutor>
    When escribo un <mensaje> y presiono "Enviar"
    Then mi <mensaje> aparece en la conversación y puedo ver los mensajes que el <tutor> me envía

    Examples:
      | usuario    | tutor        | mensaje                 | mensaje_visible |
      | Aprendiz01 | Maria Torres | "Hola, ¿puedes mañana?" | Sí              |

  Scenario Outline: Intentar chatear antes de la aceptación (Negativo)
    Given que he enviado una solicitud al <tutor>, pero aún no la ha aceptado
    When intento buscar una opción para chatear con él
    Then el botón de "Enviar solicitud" cambia de color y no puede contactar con el <tutor>

    Examples:
      | usuario    | tutor        | chat_habilitado |
      | Aprendiz01 | Maria Torres | No              |
