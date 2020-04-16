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
    ;;(base32 "14l3xlps23g9r202b385d8p9rsxrhkcmbd5fp22zz5bdjp7da0j4"))))

    (build-system copy-build-system)
    (synopsis "PeerVPN is a software that builds virtual ethernet networks between multiple computers.")
    (description
     "Most traditional VPN solutions follow the client-server principle, which means that all participating nodes connect to a central server. This creates a star topology, which has some disadvantages. The central node needs lots of bandwith, because it needs to handle all the VPN traffic. Also, if the central node goes down, the whole VPN is down too.

A virtual network built by PeerVPN uses a full mesh topology. All nodes talk directly to each other, there is no need for a central server. If one node goes down, the rest of the network is unaffected.

Configuring PeerVPN is easy. You just need to configure a network name, a password and the contact information (IP address and port) of another PeerVPN node. Adding a new node to an existing network doesn't require the existing nodes to alter their configuration, because its IP address is automatically distributed across the whole virtual network.

")
    (home-page "https://peervpn.net/")
    (license gpl3+)))
