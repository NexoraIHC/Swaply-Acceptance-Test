# language: es
# HU-07 (US07)

Feature: Visualización del sello de verificación
  Como estudiante aprendiz
  Quiero ver un sello o icono de "Verificado" en los perfiles
  Para asegurarme de que el tutor es real

  Scenario Outline: Ver sello en un perfil verificado
    Given que el <tutor> fue aprobado por su coordinador
    When el <usuario> visita la información principal del perfil
    Then se muestra un icono o sello de "Verificado" junto al nombre

    Examples:
      | usuario    | tutor           | sello_visible |
      | Aprendiz01 | TutorVerificado | Sí            |

  Scenario Outline: Ausencia de sello en perfil no verificado (Negativo)
    Given que el <tutor> no ha sido aprobado
    When el <usuario> visualiza su perfil
    Then no se muestra ningún sello de verificación

    Examples:
      | usuario    | tutor         | sello_visible |
      | Aprendiz02 | TutorSinVerif | No            |
