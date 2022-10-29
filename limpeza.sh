
#!/bin/bash

# Limpeza de arquivos inúteis no sistema
# Por Junior Alves

echo "Atualizando o sistema"
sudo apt update -y; apt full-upgrade -y
echo ""
echo ""
echo "Limpando a Lixeira"
sudo rm -rf /home/$USER/.local/share/Trash/files/*
echo ""
echo ""
echo "Limpando o diretório TMP"
sudo rm -rf /var/tmp/*
echo ""
echo ""
echo "Exclusão de cash inúteis do sistema. Cópias de atualizações do gerenciador de atualizações"
sudo apt-get clean -y
echo ""
echo ""
echo "Exclusão de programas que não estão sendo utilizados pelo sistema"
sudo apt-get autoremove -y
echo ""
echo ""
echo "Exclusão de arquivos duplicados"
sudo apt-get autoclean -y
echo ""
echo ""
echo "Reparando pacotes quebrados durante atualização"
sudo dpkg --configure -a
echo ""
echo ""
echo "Limpando cache da memória"
echo 3 > /proc/sys/vm/drop_caches
echo ""
echo ""
clear
echo "Limpeza concluída"
sleep 4
exit


