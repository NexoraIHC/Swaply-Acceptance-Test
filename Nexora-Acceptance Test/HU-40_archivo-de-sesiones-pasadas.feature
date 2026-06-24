# language: es
# HU-40 (US40)

Feature: Archivo de sesiones pasadas
  Como tutor
  Quiero un historial de mis sesiones pasadas
  Con nombres y fechas

  Scenario Outline: Consultar historial de tutorías
    Given que quiero recordar a quién ayudé el mes pasado como <tutor>
    When entro al "Historial de Sesiones"
    Then veo una lista con todas mis <sesiones_pasadas> y sus detalles

    Examples:
      | tutor        | sesiones_pasadas |
      | Maria Torres | "Lista Visible"  |
