# language: es
# HU-30 (US30)

Feature: Indicador de "Tutor en línea"
  Como aprendiz
  Quiero ver un indicador (ej. punto verde)
  Que muestre qué tutores están online

  @HU30
  Scenario Outline: Identificar tutor activo
    Given que necesito ayuda urgente como <aprendiz>
    When veo la lista de resultados
    Then puedo identificar a los <tutores_online> mediante un <indicador_online>

    Examples:
      | aprendiz   | tutores_online | indicador_online |
      | Aprendiz01 | "Maria Torres" | "Punto Verde"    |

  @HU30
  Scenario Outline: Estado cambia a inactivo
    Given que un <tutor> estaba en línea
    When cierra la aplicación o queda inactivo
    Then el <indicador_online> cambia a <indicador_offline>

    Examples:
      | tutor        | indicador_online | indicador_offline |
      | Maria Torres | "Punto Verde"    | "Gris"            |
