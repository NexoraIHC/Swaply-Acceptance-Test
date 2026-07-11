# language: es
# HU-35 (US35)

Feature: Reportar reseña inapropiada
  Como usuario
  Quiero reportar una reseña que considero falsa o inapropiada
  Para mantener la integridad del sistema de calificaciones

  Scenario Outline: Reporte enviado
    Given que el <usuario> presiona "Reportar" y describe el <motivo>
    When envía el reporte
    Then el sistema muestra "Tu reporte ha sido enviado. Lo revisaremos en breve"

    Examples:
      | usuario    | motivo          | mensaje                                               |
      | Aprendiz10 | Reseña ofensiva | "Tu reporte ha sido enviado. Lo revisaremos en breve" |

  Scenario Outline: Reporte duplicado (Negativo)
    Given que el <usuario> ya reportó una <resena>
    When intenta reportarla nuevamente
    Then el sistema muestra "Ya has reportado esta reseña"

    Examples:
      | usuario    | resena      | mensaje                        |
      | Aprendiz11 | Reseña #145 | "Ya has reportado esta reseña" |
