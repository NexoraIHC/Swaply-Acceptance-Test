# language: es
# HU-34 (US34)

Feature: Insignia de tutor destacado
  Como tutor con alta calificación
  Quiero recibir una insignia visible cuando mantenga un alto promedio
  Para destacar y generar más confianza

  Scenario Outline: Insignia otorgada
    Given que el <tutor> alcanza 4.5 estrellas con un mínimo de 10 sesiones
    When el sistema actualiza su reputación
    Then aparece la insignia "Tutor Destacado" en su perfil

    Examples:
      | tutor   | promedio | insignia          |
      | Tutor08 | 4.5      | "Tutor Destacado" |

  Scenario Outline: Insignia retirada (Negativo)
    Given que el promedio del <tutor> cae por debajo de 4.0
    When el sistema actualiza su reputación
    Then la insignia se elimina automáticamente de su perfil

    Examples:
      | tutor   | promedio | insignia_retirada |
      | Tutor09 | 3.8      | Sí                |
