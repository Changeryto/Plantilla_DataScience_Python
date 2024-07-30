#!/usr/bin/env bash

echo "Iniciando git en:"
echo $(pwd)
git init
git add .
git commit -m "Commit inicial del proyecto {{ cookiecutter.project_title }}"
echo "Repositorio inicializado correctamente."

conda env create --file environment.yml && echo "Ambiente de conda creado con exito."
conda activate {{ cookiecutter.project_slug }}
codium . || code . || echo "No ha instalado VScode o VScodium."

exit 0
