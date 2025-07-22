# bash_link_difference
Dok se spremam za RHCSA sertifikat, prolazim kroz nove oblasti na koje ranije nisam mnogo obraćao pažnju. Jedna od njih su linkovi između fajlova: hard linkovi i soft (symbolic) linkovi. Ovu Bash skriptu sam napisao kako bih sebi praktično objasnio razliku između njih. Nadam se da će biti korisna i drugima koji uče Linux administraciju.

O projektu
Ovaj repozitorijum sadrži Bash skriptu koja demonstrira razliku između hard linkova i symbolic (soft) linkova u Linux okruženju.

Skripta automatski:

Kreira direktorijum link_test u korisničkom home direktorijumu.

Kreira fajl i upisuje poruku "LINUX JE ŽIVOT".

Kreira hard link i symbolic link ka tom fajlu.

Ispisuje sadržaj originalnog fajla, hard linka i symbolic linka.

Briše originalni fajl kako bi se pokazala razlika u ponašanju između dva tipa linkova.
