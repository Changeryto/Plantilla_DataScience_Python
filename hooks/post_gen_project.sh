#!/usr/bin/env bash

echo "Iniciando git en:"
echo $(pwd)
git init
git add .
git commit -m "Commit inicial del proyecto {{ cookiecutter.project_title }}"
echo "Repositorio inicializado correctamente."
codium . || code . || echo "No ha instalado code o codium."
exit 0
