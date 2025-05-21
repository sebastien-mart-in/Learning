ssh-keygen -t ed25519 -C "ton.email@example.com"

# Si tu veux utiliser RSA (moins recommandé mais parfois nécessaire), remplace ed25519 par rsa et ajoute -b 4096 pour plus de sécurité :
ssh-keygen -t rsa -b 4096 -C "ton.email@example.com"


3. Réponds aux invites
Tu verras ceci :

Enter file in which to save the key (/home/utilisateur/.ssh/id_ed25519):
Appuie sur Entrée pour accepter le chemin par défaut.

Il te sera demandé un mot de passe pour protéger la clé privée (optionnel mais recommandé).

4. Clé créée !
Tu devrais voir un message du type :


Your identification has been saved in /home/utilisateur/.ssh/id_ed25519
Your public key has been saved in /home/utilisateur/.ssh/id_ed25519.pub


🔑 Ajouter la clé SSH à ton agent SSH (facultatif mais recommandé)


eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519


📋 Copier la clé publique pour l’ajouter à un service (GitHub, etc.)

cat ~/.ssh/id_ed25519.pub
Copie la sortie et ajoute-la dans l'interface de ton service distant (par exemple, dans GitHub > Settings > SSH and GPG keys).

