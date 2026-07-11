# language: es
# HU-19 (US19)

Feature: Historial de solicitudes
  Como usuario
  Quiero ver el historial de todas mis solicitudes enviadas y recibidas
  Para hacer seguimiento del estado de cada una

  Scenario Outline: Historial organizado por estado
    Given que el <usuario> accede a "Mis solicitudes"
    When la página carga
    Then ve todas sus solicitudes organizadas por estado: Pendiente, Aceptada, Rechazada y Completada

    Examples:
      | usuario | historial_visible |
      | Tutor23 | Sí                |

  Scenario Outline: Sin solicitudes (Negativo)
    Given que el <usuario> nunca ha enviado ni recibido solicitudes
    When accede al historial
    Then el sistema muestra "¡Aún no tienes solicitudes. Empieza buscando un tutor!"

    Examples:
      | usuario    | mensaje                                                  |
      | Aprendiz24 | "¡Aún no tienes solicitudes. Empieza buscando un tutor!" |
