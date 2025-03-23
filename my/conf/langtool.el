;;;;;;;; LanguageTool ;;;;;;;;
;; https://github.com/mhayashi1120/Emacs-langtool
(setq langtool-java-classpath
      "/usr/share/languagetool:/usr/share/java/languagetool/*")
(setq langtool-java-user-arguments '("-Djdk.xml.totalEntitySizeLimit=800000"))
;; https://github.com/mhayashi1120/Emacs-langtool
(setq langtool-default-language "en-US")
