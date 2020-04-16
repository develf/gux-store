# ruguix
Канал (репозиторий) guix для тех кому ближе к делу.

> Да, здесь все на русском, не удивляйтесь.

## Пакеты:

* PeerVPN - решение для быстрого подъема децентрализованной VPN - сети 

## Установка

В файл channels.scm необходимо добавить следующий конфиг:

$ cat ~/.config/guix/channels.scm

``` scheme
(cons* (channel
	(name 'gux-store)
	(url "https://github.com/develf/ruguix")
	(branch "master"))
       %default-channels)
```
