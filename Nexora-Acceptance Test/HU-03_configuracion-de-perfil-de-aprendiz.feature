# language: es
# HU-03 (US03)

Feature: Configuración de perfil de aprendiz
  Como estudiante aprendiz
  Quiero tener un perfil simple donde pueda listar las materias que necesito ayuda
  Para que los tutores me encuentren

  Scenario Outline: Añadir habilidades para aprender
    Given que el <usuario> está en la sección "Editar Perfil"
    When escribe el <curso> en "Temas de dominio" y guarda
    Then el curso se añade correctamente a su perfil

    Examples:
      | usuario    | curso     | curso_agregado |
      | Aprendiz01 | Cálculo I | Cálculo I      |

  Scenario Outline: Eliminar una habilidad
    Given que el <usuario> tiene la materia <curso> añadida a su perfil
    When hace clic en el icono de eliminar junto a esa materia
    Then la materia desaparece de su lista de habilidades

    Examples:
      | usuario    | curso     | curso_eliminado |
      | Aprendiz01 | Cálculo I | Cálculo I       |
