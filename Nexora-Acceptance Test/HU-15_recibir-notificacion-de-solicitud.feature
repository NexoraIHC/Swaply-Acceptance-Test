# language: es
# HU-15 (US15)

Feature: Recibir notificación de solicitud
  Como estudiante tutor
  Quiero recibir una notificación clara cuando un aprendiz me solicite ayuda
  Para responder a tiempo

  Scenario Outline: Notificación de nueva solicitud
    Given que un <aprendiz> me ha enviado una solicitud de ayuda
    When abro la aplicación como <tutor>
    Then veo un indicador de notificación en el icono correspondiente

    Examples:
      | aprendiz   | tutor        | notificacion_visible |
      | Aprendiz01 | Maria Torres | Sí                   |

  Scenario Outline: Ver detalles desde la notificación
    Given que recibo una <notificacion> de solicitud del <aprendiz>
    When hago clic en ella
    Then soy llevado a una pantalla donde puedo ver los detalles de la solicitud

    Examples:
      | tutor        | notificacion      | aprendiz   | pantalla_mostrada      |
      | Maria Torres | "Nueva Solicitud" | Aprendiz01 | "Detalle de Solicitud" |
