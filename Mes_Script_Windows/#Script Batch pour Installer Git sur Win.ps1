#Script Batch pour Installer Git sur Windows
#Ouvre le Bloc-notes (ou un éditeur de texte).
#Copie-colle le code suivant :
#batch
#Copier le code
@echo off
setlocal

rem Vérifie si Git est déjà installé
git --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Git est déjà installé.
    exit /b
)

rem Définit l'URL de téléchargement de Git
set "GIT_URL=https://github.com/git/git/releases/latest/download/Git-2.42.0-64-bit.exe"

rem Définit le nom du fichier d'installation
set "INSTALLER=Git-Installer.exe"

rem Télécharge l'installateur
echo Téléchargement de Git...
powershell -Command "Invoke-WebRequest -Uri %GIT_URL% -OutFile %INSTALLER%"

rem Exécute l'installateur
echo Installation de Git...
start /wait "" "%INSTALLER%" /VERYSILENT /NORESTART

rem Supprime l'installateur après installation
del "%INSTALLER%"

echo Git a été installé avec succès.
pause
endlocal
#Instructions
#Sauvegarde le fichier : Sauvegarde le fichier avec l'extension .bat, par exemple install_git.bat.
#Exécution : Clique droit sur le fichier et sélectionne "Exécuter en tant qu'administrateur" pour lancer le script.
#Remarques
#Assure-toi d'avoir PowerShell installé sur ton PC, car le script l'utilise pour télécharger Git.
#Ce script installe la version 2.42.0 de Git pour Windows 64 bits. Si tu veux une version différente, modifie l'URL GIT_URL.
#L'option /VERYSILENT permet d'installer Git sans intervention de l'utilisateur.