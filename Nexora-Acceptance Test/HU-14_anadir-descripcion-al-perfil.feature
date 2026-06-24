# language: es
# HU-14 (US14)

Feature: Añadir descripción al perfil
  Como estudiante tutor
  Quiero tener una sección en mi perfil para escribir una breve descripción sobre mí y mi método de enseñanza
  Para que los aprendices me conozcan mejor

  Scenario Outline: Guardar biografía
    Given que estoy en la pantalla de "Editar Perfil" como <tutor>
    When escribo una <descripcion> en el campo de "Biografía" y guardo
    Then el texto se muestra públicamente en mi perfil

    Examples:
      | tutor        | descripcion                                  | biografia_guardada |
      | Maria Torres | "Apasionada por las matemáticas, te ayudaré" | Sí                 |

  Scenario Outline: Límite de caracteres (Negativo)
    Given que estoy escribiendo mi biografía y el <limite> es 500 caracteres
    When intento escribir más del <limite> de caracteres permitido
    Then el sistema no me permite escribir más y muestra un contador de caracteres

    Examples:
      | tutor        | limite | escritura_bloqueada | contador_visible   |
      | Maria Torres | 500    | Sí                  | Sí (ej. "500/500") |
