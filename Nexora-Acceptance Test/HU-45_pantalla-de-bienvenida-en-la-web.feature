# language: es
# HU-45 (US45)

Feature: Pantalla de bienvenida en la web
  Como nuevo usuario que accede por primera vez
  Quiero ver una página de bienvenida que explique qué es Swaply y cómo funciona
  Para entender la propuesta de valor antes de registrarme

  Scenario Outline: Bienvenida al primer acceso
    Given que el <usuario> accede a la web por primera vez
    When la página carga
    Then ve las secciones de bienvenida con ilustraciones y descripción de las funciones de Swaply

    Examples:
      | usuario        | secciones_mostradas |
      | UsuarioNuevo02 | Sí                  |

  Scenario Outline: Ir directo a registro
    Given que el <usuario> entiende la propuesta de valor
    When hace clic en "Registrarse"
    Then es redirigido directamente al formulario de registro

    Examples:
      | usuario        | destino      |
      | UsuarioNuevo03 | RegisterPage |
