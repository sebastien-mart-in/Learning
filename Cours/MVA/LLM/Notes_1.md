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

### Batching 

On va désormais mettre en batch nos modèles. 

Quel est la signature (inputs, outputs, fonction) d'un modèle non batché ? d'un modèle batché ? 

Que signifie 'batch-first' ? et 'input-first' ? 

### Shortcut connections (ou residual, skip)

Qu'est ce qu'une shortcut connections ? à quoi sert elle ? dans quel cas est elle utile ? Comment l'implémente t on ?
à quoi ressemble un deep NN avec et sans elles ? 

à voir : comment est ce fait en détails ? y a t il tout de même des poids ? 



## Statistiques à connaître

Stats : taille du plus petit des gpt 2 ? (parameters, n_tokens  et embedding dimensions)
pareil pour le plus large des gpt3 ? Les suivants ?
pareil pour d'autres modèles LLM ? Nom, taille, embedding, particularités ?
