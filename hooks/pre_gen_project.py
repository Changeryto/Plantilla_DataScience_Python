# Pudo haber sido un archivo .sh

# Ejemplo: 
import os
import sys

project_slug = "{{ cookiecutter.project_slug }}"

ERROR_COLOR = "\x1b[31m"
MESSAGE_COLOR = "\x1b[34m"
RESET_ALL = "\x1b[0m"

if project_slug.startswith(".") or project_slug.startswith("*"):
    print(f"{ERROR_COLOR}ERROR: El nombre del proyecto no puede iniciar con un punto o asterisco")
    sys.exit(1)

print(f"{MESSAGE_COLOR}Mucha suerte!")
print(f"Creando proyecto en { os.getcwd() }{RESET_ALL}")