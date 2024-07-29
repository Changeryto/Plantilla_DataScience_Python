#!/usr/bin/env bash

echo "Iniciando git en:"
echo $(pwd)
git init
git add .
git commit -m "Commit inicial del proyecto {{ cookiecutter.project_title }}"
echo "Repositorio inicializado correctamente."

conda env create --file environment.yml
conda activate {{ cookiecutter.project_slug }}
codium . || code . || echo "No ha instalado VScode o VScodium."
echo "Ambiente de conda creado con exito."

exit 0
