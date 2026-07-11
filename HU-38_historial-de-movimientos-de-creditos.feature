# language: es
# HU-38 (US38)

Feature: Historial de movimientos de créditos
  Como usuario
  Quiero ver el historial detallado de mis créditos ganados y gastados
  Para controlar mi economía dentro de la plataforma

  Scenario Outline: Historial completo
    Given que el <usuario> accede a "Mi billetera"
    When la página carga
    Then ve fecha, descripción, cantidad y saldo resultante de cada movimiento

    Examples:
      | usuario | historial_visible |
      | Tutor12 | Sí                |

  Scenario Outline: Filtro por tipo de movimiento
    Given que el <usuario> selecciona el filtro "Ganancias"
    When aplica el filtro
    Then solo se muestran los movimientos donde recibió créditos

    Examples:
      | usuario | filtro    | resultado     |
      | Tutor13 | Ganancias | Solo ingresos |
