# language: es
# HU-17 (US17)

Feature: Aceptar o rechazar solicitud
  Como estudiante tutor
  Quiero tener iconos simples para "Aceptar" o "Rechazar" en cada solicitud que reciba
  Para gestionarlas rápidamente

  Scenario Outline: Aceptar una solicitud
    Given que el <tutor> ha revisado una <solicitud> y quiere ayudar
    When presiona el botón "Aceptar"
    Then se abre un chat con el <aprendiz> y la <solicitud> cambia de estado a "Aceptada"

    Examples:
      | tutor        | aprendiz   | solicitud | chat_abierto | estado_solicitud |
      | Maria Torres | Aprendiz01 | "S-123"   | Sí           | "Aceptada"       |

  Scenario Outline: Rechazar una solicitud
    Given que el <tutor> no tiene tiempo para ayudar con una <solicitud>
    When presiona el botón "Rechazar"
    Then la <solicitud> se cierra y el <aprendiz> recibe una notificación

    Examples:
      | tutor        | aprendiz   | solicitud | solicitud_cerrada | notificacion_enviada |
      | Maria Torres | Aprendiz02 | "S-124"   | Sí                | Sí                   |
