#import "@preview/equate:0.2.0": equate
#import "@preview/showybox:2.0.1": showybox
#import "@preview/lovelace:0.3.0": *
#import "@preview/ilm:1.1.2": *

#show: ilm.with(
  title: [Projet 3 - Réseaux Bayésiens],
  author: "Roiban Marius-Alexandru\n000519268",
  date: datetime(year: 2024, month: 11, day: 10),
  abstract: [],
  preface: [],
  figure-index: (enabled: false),
  table-index: (enabled: false),
  listing-index: (enabled: false),
  table-of-contents: none
)

#let showbox(title, body) = box()[
  #showybox(
    shadow: (
      offset:3.5pt
    ), title: title,
    [#body]
  )
]


#let pseudocodeblock(title, code) = box[#text(
  font: "FiraCode Nerd Font Mono", 
  ligatures: true
)[
  #showybox(
    shadow: (
      offset: 3.5pt
  ),
  title: title,
  [#code]
  )
]]

#let CQFD = box[$space square.filled$]

= Introduction
Dans ce rapport, nous explorons l'implémentation de l'inférence par énumération dans un réseau bayésien, en suivant les différentes étapes nécessaires à la mise en œuvre de cet algorithme.

Ensuite, nous évaluerons l'efficacité de l'inférence par énumération en analysant les résultats obtenus, ce qui nous permettra de mieux comprendre les performances et les limites de cette méthode.


= Méthodologie
== Comment va-t-on procéder pour les expériences ?
Deux paramètres seront manipulés : la taille de la carte et le nombre de gemmes présentes. Nous mesurerons ensuite le temps d'exécution requis pour effectuer l'inférence sur chaque configuration de carte et de nombre de gemmes.

== Justification

La formule de likelihood: $2^(-d)$, où $d$ représente la distance euclidienne, est utilisée ici pour modéliser l'effet de l'éloignement sur la vraisemblance.  Cette formule implique que, plus la distance $d$ entre la position courante d'une cellule et la position d'une gemme est grande, plus la vraisemblance diminue. En effet, à mesure que $d$ augmente, $2^(-d)$ décroît, ce qui réduit la probabilité de présence d'une gemme à un certain endroit.



= Résultats