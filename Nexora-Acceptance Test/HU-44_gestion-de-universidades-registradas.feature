# language: es
# HU-44 (US44)

Feature: Gestión de universidades registradas
  Como administrador
  Quiero agregar, editar o eliminar universidades en el sistema
  Para controlar qué instituciones pueden registrarse en la plataforma

  Scenario Outline: Agregar universidad
    Given que el <administrador> ingresa nombre y dominio de una nueva <universidad>
    When guarda los cambios
    Then el dominio queda habilitado para nuevos registros

    Examples:
      | administrador | universidad      | dominio_habilitado |
      | Admin07       | Universidad ESAN | Sí                 |

  Scenario Outline: Eliminar universidad (Negativo)
    Given que el <administrador> elimina una <universidad> del sistema
    When confirma la eliminación
    Then los nuevos registros con ese dominio son rechazados, pero los usuarios existentes mantienen sus cuentas

    Examples:
      | administrador | universidad             | registros_existentes |
      | Admin08       | Universidad Continental | Se mantienen         |
