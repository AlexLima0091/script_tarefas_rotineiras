#!/bin/bash
clear

echo " Desemvolvedores: Alex"
echo "Contatos: 
      Telefones: Whatsapp: (92) 98131-9088
		 (92) 99480-4598
      E-mail: alexlima0091@gmail.com"

echo ""

update-manager
do-release-upgrade


echo "__________________________________________________________________________________________________________
|***************************************************************************************************************|
|***************************************************************************************************************|
|***************************************************************************************************************|
|***************************************************************************************************************|
|********************************VAMOS FAZER UMA VARREDURA NO SISTEMA*******************************************|
|******************ATUALIZAR, VERIFICAR E CORRIGIR O SISTEMA CASO HAJA NECESSIDADE******************************|
|******************************TANTO PELO \"APT\" QUANTO PELO \"APTITUDE\"******************************************|
|***************************************************************************************************************|
|***************************************************************************************************************|
|***************************************************************************************************************|
|***************************************************************************************************************|
|_______________________________________________________________________________________________________________|"

echo ""

echo "******************************LIMPANDO O SISTEMA************************************************
**********************************************************************************************************"

echo ""

echo "Chegando a integridade dos pacotes do sistema, ou seja, verificando se não há dependências quebradas...."
if ! apt-get check
then
    echo "Erro ao realizar a checagem da integridade dos pacotes do sistema! Chame o Alex Suporte"
    exit 1
fi
echo ""

echo "Checagem da integridade dos pacotes do sistema feita com sucesso!"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo "Atualizando repositórios (Obtendo a lista de pacotes que precisam ser atualizadas)...."
if ! apt-get update -y
then
    echo "Não foi possível Obtendo a lista de pacotes a que precisam ser atualizadas possíveis erros:"
    echo "verificar o repositório /etc/apt/sources.list"
    echo "Algum repositório pode estar obsoleto ou offline"
    echo "Erro de conexão com o servidor do repositório ou seu computador pode estar sem acesso a internet"
    echo "Outros erros podem ter acontecidos fora os listados acima"
    exit 1
fi
echo ""

echo "Lista de pacotes a que precisam ser atulizada feita com sucesso!"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo "Atualizando os pacotes listados...."
if ! apt-get upgrade -y
then
    echo "Não foi possível atualizar a lista de pacotes que precisam ser atualizadas possíveis erros:"
    echo "verificar o repositório /etc/apt/sources.list"
    echo "Algum repositório pode estar obsoleto ou offline"
    echo "Erro de conexão com o servidor do repositório ou seu computador pode estar sem acesso a internet"
    echo "Outros erros podem ter acontecidos fora os listados acima"
    exit 1
fi
echo ""

echo "Atualização dos pacotes listados feita com sucesso!"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo "Atualizando os pacotes listados instalando e removendo  pacotes se necessários...."
if ! apt-get full-upgrade -y
then
    echo "Não foi possível atualizar a lista de pacotes que precisam ser atualizadas possíveis erros:"
    echo "Verificar o repositório /etc/apt/sources.list"
    echo "Algum repositório pode estar obsoleto ou offline"
    echo "Erro de conexão com o servidor do repositório ou seu computador pode estar sem acesso a internet"
    echo "Outros erros podem ter acontecidos fora os listados acima"
    exit 1
fi
echo ""

echo "Atualização profunda dos pacotes listados com sucesso!"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo ""

echo "Atualizando a distribuição do sistema"
if ! apt-get dist-upgrade -y
then
    echo "Não foi possível atualizar a distribuição do sistema:"
    echo "Verificar o repositório /etc/apt/sources.list"
    echo "Algum repositório pode estar obsoleto ou offline"
    echo "Erro de conexão com o servidor do repositório ou seu computador pode estar sem acesso a internet"
    echo "Outros erros podem ter acontecidos fora os listados acima"
    exit 1
fi
echo ""

echo "Atualização da distribuição do sistema feita com sucesso"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo "Atualizando repositórios (Obtendo a lista de pacotes que precisam ser atualizadas)...."
if ! aptitude update
then
    echo "Não foi possível Obtendo a lista de pacotes a que precisam ser atualizadas possíveis erros:"
    echo "verificar o repositório /etc/apt/sources.list"
    echo "Algum repositório pode estar obsoleto ou offline"
    echo "Erro de conexão com o servidor do repositório ou seu computador pode estar sem acesso a internet"
    echo "Outros erros podem ter acontecidos fora os listados acima"
    exit 1
fi
echo ""

echo "Lista de pacotes a que precisam ser atulizada feita com sucesso!"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo "Atualizando os pacotes listados...."
if ! aptitude upgrade
then
    echo "Não foi possível atualizar a lista de pacotes que precisam ser atualizadas possíveis erros:"
    echo "verificar o repositório /etc/apt/sources.list"
    echo "Algum repositório pode estar obsoleto ou offline"
    echo "Erro de conexão com o servidor do repositório ou seu computador pode estar sem acesso a internet"
    echo "Outros erros podem ter acontecidos fora os listados acima"
    exit 1
fi
echo ""

echo "Atualização dos pacotes listados feita com sucesso!"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo "Atualizando os pacotes listados de forma segura...."
if ! aptitude safe-upgrade
then
    echo "Não foi possível atualizar a lista de pacotes de forma segura que precisam ser atualizadas possíveis erros:"
    echo "verificar o repositório /etc/apt/sources.list"
    echo "Algum repositório pode estar obsoleto ou offline"
    echo "Erro de conexão com o servidor do repositório ou seu computador pode estar sem acesso a internet"
    echo "Outros erros podem ter acontecidos fora os listados acima"
    exit 1
fi
echo ""

echo "Atualização segura dos pacotes listados feita com sucesso!"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo "Atualizando os pacotes listados instalando e removendo  pacotes se necessários...."
if ! aptitude full-upgrade
then
    echo "Não foi possível atualizar a lista de pacotes de forma segura que precisam ser atualizadas possíveis erros:"
    echo "verificar o repositório /etc/apt/sources.list"
    echo "Algum repositório pode estar obsoleto ou offline"
    echo "Erro de conexão com o servidor do repositório ou seu computador pode estar sem acesso a internet"
    echo "Outros erros podem ter acontecidos fora os listados acima"
    exit 1
fi
echo ""

echo "Atualização profunda dos pacotes listados com sucesso!"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo "Atualizando a distribuição do sistema"
if ! aptitude dist-upgrade
then
    echo "Não foi possível atualizar a distribuição do sistema:"
    echo "Verificar o repositório /etc/apt/sources.list"
    echo "Algum repositório pode estar obsoleto ou offline"
    echo "Erro de conexão com o servidor do repositório ou seu computador pode estar sem acesso a internet"
    echo "Outros erros podem ter acontecidos fora os listados acima"
    exit 1
fi
echo ""

echo "Atualização da distribuição do sistema feita com sucesso"

echo ""

echo "****************************************************************************************************
**********************************************************************************************************"

echo ""

echo ""

echo "******************************LIMPANDO O SISTEMA************************************************
**********************************************************************************************************"

echo ""

apt-get remove
apt-get autoremove
apt-get clean
apt-get autoclean


aptitude remove
aptitude clean
aptitude autoclean
