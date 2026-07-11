# language: es
# HU-37 (US37)

Feature: Usar créditos para solicitar tutoría
  Como aprendiz
  Quiero usar mis créditos disponibles para pagar por sesiones de tutoría
  Para acceder a la ayuda que necesito sin usar dinero real

  Scenario Outline: Pago exitoso con créditos
    Given que el <aprendiz> tiene <creditos> suficientes y envía la solicitud
    When acepta el costo en créditos
    Then los créditos se descuentan y la solicitud se envía

    Examples:
      | aprendiz   | creditos | solicitud_enviada |
      | Aprendiz12 | 50       | Sí                |

  Scenario Outline: Créditos insuficientes (Negativo)
    Given que el <aprendiz> no tiene suficientes créditos
    When intenta solicitar una tutoría
    Then el sistema muestra "Créditos insuficientes. Gana créditos enseñando a otros"

    Examples:
      | aprendiz   | mensaje                                                   |
      | Aprendiz13 | "Créditos insuficientes. Gana créditos enseñando a otros" |
