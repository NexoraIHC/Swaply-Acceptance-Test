# language: es
# HU-33 (US33)

Feature: Ver calificaciones recibidas
  Como usuario
  Quiero ver todas las calificaciones y reseñas recibidas en mi perfil
  Para conocer mi reputación y áreas de mejora

  Scenario Outline: Vista de reseñas
    Given que el <usuario> accede a su perfil
    When revisa la sección de reseñas
    Then ve todas las reseñas con nombre del evaluador, puntuación, comentario y fecha

    Examples:
      | usuario | reseñas_visibles |
      | Tutor07 | Sí               |

  Scenario Outline: Sin calificaciones (Negativo)
    Given que el <usuario> no ha recibido calificaciones
    When accede a la sección de reseñas
    Then el sistema muestra "Aún no tienes reseñas. Completa tu primera sesión"

    Examples:
      | usuario    | mensaje                                             |
      | Aprendiz09 | "Aún no tienes reseñas. Completa tu primera sesión" |
