# Guía de Desarrollo de Talleres de Clase con Jupyter Notebooks (.ipynb) en Python

Este documento explica la metodología de trabajo para el desarrollo de talleres prácticos de programación utilizando Python dentro del entorno interactivo de **Jupyter Notebooks (`.ipynb`)**. Además, describe la estructura de colaboración basada en Git mediante el uso de tres ramas específicas.

---

## 1. ¿Qué es el Desarrollo de Talleres en `.ipynb`?

Los archivos con extensión `.ipynb` son **Jupyter Notebooks** (Libros de Jupyter). Son herramientas fundamentales en la enseñanza y desarrollo con Python debido a su capacidad de integrar en un solo lugar:

* **Bloques de código ejecutable:** Permiten escribir y probar fragmentos de Python de forma aislada e inmediata.
* **Texto enriquecido (Markdown):** Permite incluir explicaciones teóricas, fórmulas matemáticas, instrucciones de talleres y documentación del código.
* **Visualizaciones en tiempo real:** Gráficos, tablas y salidas de consola generadas por el código aparecen directamente debajo de la celda ejecutada.

El *desarrollo de talleres de clase* bajo este formato fomenta un aprendizaje dinámico, donde los estudiantes resuelven problemas, documentan su lógica y visualizan los resultados de manera estructurada.

---

## 2. Estructura de Trabajo en Git (Las 3 Ramas)

Para trabajar de forma organizada, realizar el control de versiones y evitar conflictos de código, el proyecto se divide estratégicamente en tres ramas virtuales de desarrollo:

```
[ Rama: main ] <------------------ (Integración Final / Entrega del Taller)
     ^     ^
     |     |  [Pull Requests / Fusiones]
     |     |
[ RamaSebas ]      [ rama-gaby ]
  (Sebastian)        (Gabriela)
```

### A. Rama Principal: `main`
* **Propósito:** Es la rama definitiva del proyecto. Contiene la versión limpia, combinada y finalizada del taller de clase lista para ser entregada o revisada por el docente.
* **Regla de oro:** No se trabaja ni se escribe código directamente en esta rama. Solo recibe actualizaciones mediante fusiones (*merges*) de las ramas individuales cuando las soluciones ya han sido verificadas.

### B. Rama Individual: `RamaSebas`
* **Dueño:** Sebastian David Chaparro Sánchez
* **Propósito:** Espacio de trabajo personal e independiente para Sebastian. Aquí desarrolla sus propuestas de solución, experimentos de código y análisis dentro del notebook asignado.

### C. Rama Individual: `rama-gaby`
* **Dueño:** Gabriela Rojas Rojas
* **Propósito:** Espacio de trabajo personal e independiente para Gabriela. Aquí redacta, codifica y documenta sus aportes correspondientes a las asignaciones del taller.

---

## 3. Flujo de Trabajo Colaborativo (Workflow)

Para garantizar el éxito en el desarrollo del taller, Sebastian y Gabriela deben seguir estos pasos:

1.  **Clonar el repositorio y situarse en su rama:**
    * Sebastian trabaja en `RamaSebas`.
    * Gabriela trabaja en `rama-gaby`.
2.  **Desarrollar el taller:** Cada integrante abre el archivo `.ipynb`, resuelve los ejercicios de Python programando en las celdas de código y explicando sus respuestas en celdas de Markdown.
3.  **Confirmar cambios locales (Commit & Push):** Guardar el progreso de manera constante en sus respectivas ramas en la nube (GitHub/GitLab).
4.  **Consolidación en `main`:** Una vez que ambos terminan sus partes correspondientes o han debatido las soluciones, se realiza una solicitud de extracción (*Pull Request*) o fusión (*Merge*) hacia la rama `main`, consolidando el taller completo sin pisar el trabajo del otro.
