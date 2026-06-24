# language: es
# HU-12 (US12)

Feature: Dejar calificación a un tutor
  Como estudiante aprendiz
  Quiero poder dejar una calificación con estrellas y un breve comentario después de una sesión
  Para valorar la ayuda recibida

  Scenario Outline: Calificar sesión completada
    Given que he finalizado una sesión de tutoría con el <tutor>
    When voy a la sección de "Mis Sesiones" y selecciono la sesión
    Then veo una opción para calificar al <tutor> de 1 a 5 estrellas y dejar un comentario

    Examples:
      | usuario    | tutor        | opcion_calificar_visible |
      | Aprendiz01 | Maria Torres | Sí                       |

  Scenario Outline: No poder calificar antes de la sesión (Negativo)
    Given que he coordinado una sesión con el <tutor>, pero aún no ha ocurrido
    When busco la opción para calificar
    Then la función de calificación para esa sesión no está habilitada

    Examples:
      | usuario    | tutor        | calificacion_habilitada |
      | Aprendiz01 | Maria Torres | No                      |
