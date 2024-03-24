#!/bin/bash

# ASCII sanatı ve başlangıç mesajını göster
cat << "EOF"
██████╗       ██████╗       ██████╗  ██████╗ ███╗   ███╗██████╗ 
██╔══██╗      ██╔══██╗      ██╔══██╗██╔═══██╗████╗ ████║██╔══██╗
██║  ██║█████╗██║  ██║█████╗██████╔╝██║   ██║██╔████╔██║██████╔╝
██║  ██║╚════╝██║  ██║╚════╝██╔══██╗██║   ██║██║╚██╔╝██║██╔══██╗
██████╔╝      ██████╔╝      ██████╔╝╚██████╔╝██║ ╚═╝ ██║██████╔╝
╚═════╝       ╚═════╝       ╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚═════╝ 
RUBERTKİYM1K YİNE SOKTUUUU LAAAAAA 
EOF

echo "Ağ Bağlantı Test Aracına Hoş Geldiniz."
echo "Lütfen test edilecek IP adresini giriniz:"
read ip

echo """
1-Düşük: Düşük yoğunluklu test için kullanılır (10 ping)
2-Orta: Orta yoğunluklu test için (50 ping)
3-Yüksek: Yüksek yoğunluklu test için kullanılır (100 ping)

Bir Test Seçiniz:
"""

read test_secimi

# Ping fonksiyonu
ping_test() {
    ping -c $1 $2
}

# Test yoğunluğuna göre testi başlat
case $test_secimi in
    1)
        echo "Düşük Yoğunlukta Test Başlatılıyor..."
        ping_test 10 $ip
        ;;
    2)
        echo "Orta Yoğunlukta Test Başlatılıyor..."
        ping_test 50 $ip
        ;;
    3)
        echo "Yüksek Yoğunlukta Test Başlatılıyor..."
        ping_test 100 $ip
        ;;
    *)
        echo "Geçersiz seçim. Lütfen 1, 2 veya 3 numaralı seçeneklerden birini giriniz."
        ;;
esac

echo "Test Bitti."
echo "Başka bir işlem yapmak istiyor musunuz? (evet/hayır)"
read cevap

if [[ $cevap == "evet" ]]; then
    exec $0 # Script'i yeniden başlat
else
    echo "Çıkış yapılıyor..."
    exit 0
fi
