# language: es
# HU-46 (US46)

Feature: Tour guiado al primer ingreso
  Como nuevo usuario registrado
  Quiero recibir un tour guiado al ingresar por primera vez
  Para entender cómo usar cada sección rápidamente

  Scenario Outline: Tour automático
    Given que el <usuario> inicia sesión por primera vez
    When accede al dashboard
    Then se inicia el tour paso a paso con tooltips en las secciones principales

    Examples:
      | usuario        | tour_iniciado |
      | UsuarioNuevo04 | Sí            |

  Scenario Outline: Omitir tour
    Given que el <usuario> presiona "Saltar tour"
    When confirma la acción
    Then el tour se cierra y puede accederlo nuevamente desde la sección de ayuda

    Examples:
      | usuario        | tour_cerrado |
      | UsuarioNuevo05 | Sí           |
