# Linux Server CPU Usage Warn

Linux sunucunun (Ubuntu 18.04 ve Ubuntu 20.04 sürümlerinde test edilmiştir.) CPU kullanımı %90'ı geçtiğinde belirtilen Discord Webhook'a uyarı mesajı atar.

### Kurulum Aşamaları 
>Kurmak istediğiniz dizine girin.
```bash
	cd /home/efekanrasit
```
>Bash dosyasını indirin.
```bash
	git clone https://github.com/efekanrasit/Linux-CPU-Usage-Warn.git
```
>Sürekli şekilde çalışması için crontab ayarlayın.
```bash
	crontab -e
```
>Crontablara dakikada bir çalışacak şekilde ekleyin.
```bash
	*/1 * * * * /home/efekanrasit/Linux-CPU-Usage-Warn/serverusage.sh
```

>**Ayarlamalar**
-  4.satırdaki WEBHOOK_URL değerine discord webhook urlsini yerleştirmeniz gerekmektedir.
-  Kod şuanda kaynak kullanımları %90'ı geçtiğinde mesaj atmaktadır, değiştirmek isterseniz 7.satırdan değiştirebilirsiniz.
-  Discord Webhook'a gönderilen mesajı 9.satırdan değiştirebilirsiniz.

##### Not: BASH kodu **ChatGPT** tarafından yapılmıştır.
