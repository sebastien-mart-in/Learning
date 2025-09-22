https://llm.labri.fr/

https://huggingface.co/learn/nlp-course/chapter6

# Questionnaire suivant le cours 2 de LLM 

## Parties

### Basics

Qu'est ce qu'un bit ? et un byte ? 
Donne 2 manières connues d'encoder, sur combien de bits sont elles ? De quoi est composé la plupart du net ?

à faire : Regarder quelles sont les autres pratiques de tokenization que les algo "subword"

à quoi ressemble une full pipeline de tokenization (en 4 étapes) ?

Qu'est ce que la normalization ? Qu'est ce qu'elle enlève ? 

Load un tokenizer (par exemple 'bert-base-uncased' de transformers.AutoTokenizer) et applique son normaliseur sur une phrase pleine d'éléments à nettoyer 

### Pre-tokenization

Qu'est ce que la pré-tokenisation ? En utilisant le pretokenizer du tokenizer précédent, pre-tokenize une phrase donnée. 

Donne le pré tokenizer de SentencePiece, qui l'a développé ? 

Quelles sont les 2 étapes global pour se servir du tokenizer ? 



### Byte-Pair Encoding (BPE)

Qui a développé BPE et pour quel algo ? 
Comment fonctionne t il ? 

Comment fonctionne le pré-tokeniser ? Load le pré tokenizer déjà entrainé et pre tokenize une phrase donnée 

Comment fonctionne ce tokenizer ? Recode le from scratch sur des phrases simples (où des caractères se répètent) et lance le sur un nouveau texte
Quelle règle doit on ajouter pour les fins de phrase ? 

Comment fait on en pratique pour gérer les caractères encore jamais vu qui pourrait appaître dans les textes à encoder ? 

à voir : vérifier l'implémentation de tiktoken

Qui a développé BPE et pour quel algo ? 
Comment fonctionne t il ? 

Comment fonctionne le pré-tokeniser ? Load le pré tokenizer déjà entrainé et pre tokenize une phrase donnée 

Comment fonctionne ce tokenizer ? Recode le from scratch sur des phrases simples (où des caractères se répètent) et lance le sur un nouveau texte
Quelle règle doit on ajouter pour les fins de phrase ? 

Comment fait on en pratique pour gérer les caractères encore jamais vu qui pourrait appaître dans les textes à encoder ? 

à voir : vérifier l'implémentation de tiktoken


### WordPiece


Qui a développé wordpiece et pour quel algo ? 
Comment fonctionne t il ? 

Comment fonctionne le pré-tokeniser ? Load le pré tokenizer déjà entrainé et pre tokenize une phrase donnée 

Comment fonctionne ce tokenizer ? Quelle est la formule employée ? Recode le from scratch sur des phrases simples (où des caractères se répètent) et lance le sur un nouveau texte
Quelle token spéciaux a t on ?
