(define-module (asahi-linux)
  #:use-module (guix packages)
  #:use-module (gnu packages linux)
  #:use-module (guix download)
  #:use-module (guix licenses)
  #:use-module (guix build-system gnu))

(define-public asahi-linux
  (package
   (inherit linux-libre-arm64-generic)
   (name "asahi-linux")
   (version "asahi-6.1-2")
   (source (origin
            (method url-fetch)
            (uri (string-append
                  "https://github.com/AsahiLinux/linux/archive/refs/tags/"
                  version ".tar.gz"))
            (sha256
             (base32
              "03n6l5grlxmkl3nznhz14846pqpq9z9ql1d1011192fx2d55c253"))))
   (license gpl2)
   (home-page "https://github.com/AsahiLinux/kernel")
   (synopsis "The Asahi Linux kernel")
   (description "The Asahi Linux kernel is a Linux kernel distribution based on the upstream Linux kernel, with additional patches and modifications for better support on certain devices.")))