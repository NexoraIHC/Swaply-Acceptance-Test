# language: es
# HU-31 (US31)

Feature: Calificar sesión de tutoría
  Como aprendiz
  Quiero calificar al tutor después de cada sesión completada
  Para ayudar a otros aprendices a elegir buenos tutores

  Scenario Outline: Calificar con reseña
    Given que el <aprendiz> selecciona <estrellas> y escribe una reseña
    When envía la calificación
    Then la calificación aparece en el perfil del tutor y actualiza su promedio

    Examples:
      | aprendiz   | estrellas | calificacion_registrada |
      | Aprendiz07 | 5         | Sí                      |

  Scenario Outline: Calificación duplicada (Negativo)
    Given que el <aprendiz> ya calificó una <sesion>
    When intenta calificarla nuevamente
    Then el sistema muestra "Ya enviaste una calificación para esta sesión"

    Examples:
      | aprendiz   | sesion            | mensaje                                         |
      | Aprendiz08 | Sesión de Álgebra | "Ya enviaste una calificación para esta sesión" |
