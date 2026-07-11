# language: es
# HU-09 (US09)

Feature: Rol dual tutor/aprendiz
  Como usuario registrado
  Quiero activar tanto el rol de tutor como el de aprendiz en mi perfil
  Para poder enseñar y aprender según mis necesidades

  Scenario Outline: Activación del rol tutor
    Given que el <usuario> tiene solo el rol de aprendiz activo
    When activa el rol de tutor y agrega al menos una habilidad
    Then su perfil aparece en búsquedas tanto de tutores como de aprendices

    Examples:
      | usuario    | rol_activado     |
      | Aprendiz20 | Tutor y Aprendiz |

  Scenario Outline: Desactivación de un rol
    Given que el <usuario> desactiva el rol de tutor
    When confirma la desactivación
    Then su perfil desaparece de las búsquedas de tutores pero conserva su historial

    Examples:
      | usuario | historial_conservado |
      | Tutor21 | Sí                   |
