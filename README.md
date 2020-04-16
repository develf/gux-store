# gux-store
Репозиторий для тех кому ближе к делу.

## Установка

В файл channels.scm необходимо добавить следующий конфиг:

$ cat ~/.config/guix/channels.scm

(cons* (channel
	(name 'gux-store)
	(url "https://github.com/develf/ruguix")
	(branch "master"))
       %default-channels)
