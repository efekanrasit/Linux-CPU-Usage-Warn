#!/bin/bash

# Discord webhook URL'ini belirtin
WEBHOOK_URL=https://discord.com/api/webhooks/..

# Sunucu kaynak kullanımını kontrol edin
if [[ $(top -bn1 | awk '{print $9}' | tail -n+8 | sort -nr | head -n1 | cut -d'.' -f1) -ge 90 ]]; then
    # Sunucu kaynak kullanımı %90'ı geçmişse mesaj gönder
    curl -X POST "${WEBHOOK_URL}" -H 'Content-type: application/json' --data '{"content": "**!KAYNAK KULLANIM UYARISI!** \n\n **`Turknet Datacenter II`** sunucusunun kaynak kullanımı %90'\''ı geçti. Lütfen sunucu kaynaklarını kontrol ediniz.\n ||<@&1043838678763581490>|| "}'
fi

echo "Sunucunun kaynak kullanımları kontrol edilmiştir."
