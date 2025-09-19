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

Quels sont l'avantage majeur et le défaut majeur d'une tête en temps que telle ?






## Statistiques à connaître

Stats : taille du plus petit des gpt 2 ? (parameters, n_tokens  et embedding dimensions)
pareil pour le plus large des gpt3 ? Les suivants ?
pareil pour d'autres modèles LLM ? Nom, taille, embedding, particularités ?
