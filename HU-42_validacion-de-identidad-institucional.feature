# language: es
# HU-42 (US42)

Feature: Validación de identidad institucional
  Como administrador
  Quiero revisar y aprobar solicitudes de verificación de estudiantes
  Para garantizar que todos los usuarios son estudiantes universitarios reales

  Scenario Outline: Aprobación de verificación
    Given que el <administrador> revisa la documentación y es correcta
    When presiona "Aprobar"
    Then el estudiante obtiene el sello de verificación en su perfil

    Examples:
      | administrador | sello_verificacion |
      | Admin03       | Sí                 |

  Scenario Outline: Rechazo de verificación (Negativo)
    Given que el <administrador> detecta información inconsistente
    When presiona "Rechazar" e ingresa un motivo
    Then el usuario recibe un correo explicando cómo corregirlo

    Examples:
      | administrador | correo_enviado |
      | Admin04       | Sí             |
