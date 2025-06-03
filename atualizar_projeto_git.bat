
@echo off
REM Script para atualizar e enviar alterações no projeto Git

REM Entrar na pasta do projeto - altere se seu caminho for diferente
cd C:\Users\papel\Desktop\papelaria-carrinho

echo Atualizando repositório local...
git pull

echo Adicionando arquivos alterados...
git add .

REM Commit com mensagem padrão (você pode editar a mensagem depois do commit)
set /p commitmsg=Digite a mensagem do commit (pressione Enter para usar mensagem padrão): 
if "%commitmsg%"=="" set commitmsg=Atualização feita pelo script

git commit -m "%commitmsg%"

echo Enviando para o GitHub...
git push

echo Pronto! Seu projeto foi atualizado e enviado para o GitHub.
pause
