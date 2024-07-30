#!/usr/bin/env bash

echo "Iniciando git en:"
echo $(pwd)
git init
git add .
git commit -m "Commit inicial del proyecto {{ cookiecutter.project_title }}"
echo "Repositorio inicializado correctamente."

read -p "¿Crear nuevo entorno en conda? [(n)/y]: " user

if [ "$user" = "y" ]; then
    conda deactivate
    conda activate base
    conda env create --file environment.yml && echo "Ambiente de conda creado con exito."
    conda activate {{ cookiecutter.project_slug }}
fi

codium . || code . || echo "No ha instalado VScode o VScodium."

exit 0
