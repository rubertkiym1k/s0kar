#!/bin/bash

# Başlık
echo "
███████╗ ██████╗ ██╗  ██╗ █████╗ ██████╗ 
██╔════╝██╔═████╗██║ ██╔╝██╔══██╗██╔══██╗
███████╗██║██╔██║█████╔╝ ███████║██████╔╝
╚════██║████╔╝██║██╔═██╗ ██╔══██║██╔══██╗
███████║╚██████╔╝██║  ██╗██║  ██║██║  ██║
╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝
RUBERTKİYM1K YİNE SOKTU LANNN "
echo "TOOL'UNU SEC"
echo "1-Web sitelerine sokar (ngrok seviyesi)"
echo "2-İp ping atar(Ddos seviyesi)"
echo "HİÇBİR TOOLDA SORUMLULUK KABUL ETMEMEKTEYİM EĞİTİM AMAÇLIDIR."

# Kullanıcıdan seçim al
read -p "Seciminizi yapin (1 veya 2): " secim

case $secim in
    1)
        echo "1 calistiriliyor..."
        # s0kar1.sh scriptini calistir
        ./s0kar1.sh
        ;;
    2)
        echo "2 calistiriliyor..."
        # s0kar2.sh scriptini calistir
        ./s0kar2.sh
        ;;
    *)
        echo "Gecersiz secim! Lutfen 1 veya 2 seceneklerinden birini girin."
        ;;
esac

echo "Secilen islem tamamlandi."
