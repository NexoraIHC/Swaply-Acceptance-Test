# language: es
# HU-26 (US26)

Feature: Realizar una sesión de tutoría por videollamada
  Como estudiante
  Quiero una videollamada integrada
  Para participar en sesiones sin salir de la app

  @HU26
  Scenario Outline: Sesión exitosa y calificación
    Given que he coordinado una sesión como <aprendiz> y es la <hora_acordada>
    When hago clic en "Iniciar Sesión"
    Then la videollamada comienza
    And al finalizar la llamada, la plataforma presenta la <opcion_calificar> al tutor

    Examples:
      | aprendiz   | hora_acordada | videollamada_iniciada | opcion_calificar |
      | Aprendiz01 | "10:00 AM"    | Sí                    | "Visible"        |

  @HU26
  Scenario Outline: Sesión problemática y reporte (Tutor)
    Given que estoy en una videollamada como <tutor> con un <aprendiz>
    When el <aprendiz> no se conecta
    Then puedo finalizar la llamada y seleccionar <opcion_reporte> para describir el problema

    Examples:
      | tutor        | aprendiz   | opcion_reporte     |
      | Maria Torres | Aprendiz02 | "Reportar Usuario" |
