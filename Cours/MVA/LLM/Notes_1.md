https://llm.labri.fr/

# Questionnaire suivant le cours 1 de LLM 

## Parties

### LLM

qu'est ce qu'un LM ? (input output)
MC, n-grams

limites des n-grams

le papier de Bengio de 2003, idée clé ?

nn.Embedding, qu'est ce que c'est ? Différence avec nn.Linear ?
technique : comment regarder les poids ? Comment regarder le Ne embedding ?

à faire : voir le code pour nn.Embedding dans pytorch. Est ce que les vecteurs sont aléatoires ?


Comment définir un MLP pour ce problème ? Qu'est ce que l'output ? comment la gérer ?
Quels sont les 2 problèmes avec les MLP layer ?


### Attention

Quel est le papier qui introduit l'attention ?
Quel est le claim du papier ? dans quel contexte est il apparu ?


Quel est la quote important de Noam Brown ? PQ ?


Que prend en entrée une 'self-attention head' ? Que ressort-elle ?
En supposant que l'on a des poids alpha_i,j, comment s'en sert on pour calculer le contexte du mot i ? Quelle opération entre ces poids et notre context ?

Quels sont les éléments pour calculer les poids ? Quelle est leur interprétation ?
Comment les calculs t on ? avec quoi ? qui sont créés comment ?  

Comment normalise t on ? Formule ? Fonction torch ?
A quoi doit on faire attention avec cette normalisation ? Comment règle t on le problème ?

à faire : code une tête d'attention from scratch

Quelle est la complexité d'une tête d'attention ? Mémoire de chaque élément et temps ?

Quels sont l'avantage majeur et le défaut majeur d'une tête en temps que telle ? Quel est son nombre de paramètres ? 

### Encoder / Decoder 

Explique comment fonctionne une architecture de traduction de texte autoregressive 

Un mecanisme particulier d'attention est utilisé pour l'entrainement d'un modèle autoregressif, lequel ? Comment l'implémente t on ? Implem torch ?

Quel est le fonctionnement d'un modèle BERT ? d'un modèle GPT ? 


à faire : Se renseigner sur le fonctionnement exact d'un modèle BERT
          Regarder comment est ce que l'encoder envoir ses informations au decoder en pratique

### Autoregressive models 

à quoi ressemble la génération d'un phrase entière par un modèle autoregressif ?

### Sliding windows 

Qu'est ce que la sliding windows ? 

Quelle est la nature d'un transformer ? composition, inputs , outputs ? 

Quelles sont les 2 intérets de la sliding window ? Comment est ce coder en pratique pour run efficacement ? 
Comment est défini le contexte ? est il fixe ? pourquoi ? 

à faire : regarder les méthodes employées pour faire en sorte que les modèles n'oublie pas les éléments générés qui ne sont plus dans le contexte
          le coder

### Batching 

On va désormais mettre en batch nos modèles. 

Quel est la signature (inputs, outputs, fonction) d'un modèle non batché ? d'un modèle batché ? 

Que signifie 'batch-first' ? et 'input-first' ? 

### Shortcut connections (ou residual, skip)

Qu'est ce qu'une shortcut connections ? à quoi sert elle ? dans quel cas est elle utile ? Comment l'implémente t on ?
à quoi ressemble un deep NN avec et sans elles ? 

à voir : comment est ce fait en détails ? y a t il tout de même des poids ? 

### Dropout

Qu'est ce que le dropout ? Qu'est ce que cela permet ? Comment le réalise t on ? 
Qu'est ce que la co-adaptations ? Pourquoi la réduire est positif (2) ? 
Pourquoi le dropout permet il un effet ensembliste ? 

Comment faire du dropout avec pytorch ? 

Faut il dropout sur l'inférence ? comment enlever le dropout en inférence avec pytorch ? 

à faire : voir ce que devienne les biais 
          coder une couche dropout


### Layer Normalization 

Qu'est ce que c'est ? Pourquoi le fait on ? que sont les entrées et les sorties d'un tel processus ? à quoi ressemblent elles ? 

à faire : coder en pratique un layer norm 

### Positional embeddings

Qu'est ce que le positionnal embedding dans l'idée ? Que résout il ? Pourquoi avait on se problème dans l'architecture ? 

Comment est ce que ça marche ? Pourquoi est ce que faire ici permet de bien répartir de l'information de position dans les embeddings ? 

Quelle est la version la plus simple du positional embedding ? 
Comment la lie t on a l'embedding ? donne en une implémentation 


Quelle est la version originelle du positional embedding ? donne les formules 
Comment la lie t on ? donne une implémentation 
Explique l'argument de linéarité qui permet de justifier que l'embedding va permettre de travailler sur des positions relatives 

Que signifie RoPE ? qu'est ce que c'est ? 
Quelle est la différence entre RoPE et un positional embedding plus classique ? 
Quel est l'idée pour réaliser cela ? Quelle est la formule ? 
à faire : regarder en détails ce qu'est RoPE et le réimplémenter, comprendre ce que veut dire de mettre les informations dans l'attention plutôt que dans les embeddings


### Transformer Architecture

Donne les 8 composants d'un bloc transformer ? Que faut il faire pour faire en sorte que l'on puisse enchainer les transformers ? Quel est alors le lien entre entrée et sortie ? 
Fais un dessin d'une architecture transformer ?
Qu'est ce qu'une activation GeLU ? quelle est son interet par rapport à une autre activation ?
à faire : vérifier que dim output = dim input est bien uniquement pour enchainer les transformers de même forme
          faire toute une section sur les fonctions d'activation en LLM 

Fais le schéma de l'architecture d'un modèle GPT où le transformer serait répéter n fois. Quelles sont les inputs et les outputs ? Comment récupère t on le mot prédit ? 





## Statistiques à connaître

Stats : taille du plus petit des gpt 2 ? (parameters, n_tokens  et embedding dimensions)
pareil pour le plus large des gpt3 ? Les suivants ?
pareil pour d'autres modèles LLM ? Nom, taille, embedding, particularités ?
Des activations utilisées en LLM 
