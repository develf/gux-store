(define-module (gux meshnet)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)
  #:use-module (guix licenses))

(define-public meshnet
  (package
    (name "peervpn")
    (version "0-044")
    (source (origin
	      (method url-fetch)
	      (uri (string-append "https://peervpn.net/files/peervpn-" version
				  "-linux-x86.tar.gz"))
	      
	      (sha256
	       (base32 "08r3cb5q1n6z4apf4m0nqwfbdxc2wqsgdqdqyddk4hhp9n9mj575"))))

    (build-system copy-build-system)
    (arguments
     '(#:install-plan '(("peervpn" "bin/"))))
    (synopsis "PeerVPN - это программное обеспечение для построения ethernet-сетей между компьютерами")

    (description
     "Большинство традиционнх решений VPN преследуют прицнип клиент-сервер, что значит что все участвующие ноды подключаются к центральному серверу. Это создает топологию типа 'звезда', со своими сопуствующими недостатками. Центральная нода требует хорошего канала, потому что ей необходимо обрабатывать весь VPN трафик. Кроме того, если центральная нода станет недоступной, все подключенные к ней ноды так же станут недоступны. 

Виртуальная сеть, построенная с помощью PeerVPN использую полную меш-топологию. Каждая нода общается с другой на прямую, здесь нет необходимости в центральном сервере. Если одна из нод станет недоступна, то на оставшуюся сеть это не повлияет.

PeerVPN легко конфигурируем. Необходимо просто указать имя сети, пароль и сетевой адрес (IP-адрес/DNS и порт) другой PeerVPN ноды. Добавление новой ноды к существующей сети не требует переконфигурирования существующих нод, потому что ее IP-адрес автоматически распределяется по всей виртуальной сети.
")
    (home-page "https://peervpn.net/")
    (license gpl3+)))
