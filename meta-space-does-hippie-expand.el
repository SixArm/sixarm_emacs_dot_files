;; meta-space-does-hippie-expand: quick way to autocomplete words.
;;
;; If you use Ubuntu 12 or similar, you may need to use Compiz Confi
;; to disable the Ubuntu windowing system setting that uses alt-space:
;;
;;      apt-get install compizconfig-settings-manager
;;
;; Then CompizConfig > General Options > Key Bindings: Window Menu.
;;

(global-set-key "\M- " 'hippie-expand)


