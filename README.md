# ruguix
Репозиторий для тех кому ближе к делу.
Да, здесь все на русском, не удивляйтесь.

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
