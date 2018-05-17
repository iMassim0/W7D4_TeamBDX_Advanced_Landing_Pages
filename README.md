> Lien en production : https://bdx-landing-pages.herokuapp.com/

# Week n°7 on Day n°4 - THP by Team BDX
# Advanced Landing Pages

## Projet du jour :

Le projet du jour consiste à créer 3 Landing Pages créés à partir d'une application (ou plusieurs) rails. Celle-ci devra posséder au moins une intégration bootstrap, avoir un mailer fonctionnel en lien avec un subscribe/unsubscribe par activation d'email. Egalement, 2 opérations marketing sont attendues (bot, scrapping, etc.).

## Pré-requis et installation :

1 - Veux-tu bien stp te relever de ta PLS.

2 - Clone ce repo sur ta machine avec la commande suivante (le dossier créé s'appelera alors "W7D4_TeamBDX_Advanced_Landing_Pages") :

```
  $ git clone https://github.com/iMassim0/W7D4_TeamBDX_Advanced_Landing_Pages
```

3 - Se rendre dans le dossier souhaité, et effectuer cette ligne de commandes suivante pour initialiser le fonctionnement :

```
  $ bundle install --without production && rails db:migrate
```

**NOTA : Tu peux, si la gem PG est installée sur ta machine, effectuer un `bundle install` simple.**

## Contenu et fonctionnement de l'application :

Notre application rails a été créée (avec ❤️🤧) de manière à avoir les fonctionnalités suivantes :

  - 3 landing pages opérationnelles : 1 axée sur un template bootstrap gratuit       (landing-page 1)
                                      1 basée sur un autre modèle un peu plus sexy de timeline(pensez à cliquer sur les balises - landing-page 2)
                                      1 uniquement liée  un effet déco de THP en bannière (landing-page 3)
    Pour information, les landing-pages ne sont pas finalisées, et cela est voulu car le but ici est de créer une application fonctionnelle et non des LP à but market' finie.

  - 1 mailer fonctionnel, utilisé avec la gem Mailjet, lié à un formulaire de contact.

  - des gestions de users, avec inscription dans une DB pour un envoi de la newsletter. L'utilisateur aura la possibilités de pouvoir s'inscrire, ou se désinscrire de la liste des abonnés.

  - Scheduler er er ?

## Tests de l'application :

Pour tester et observer notre travail, assis toi comfortablement, prends du pop-corn, enfiles tes plus beaux chaussons, et en avant guinguamp.

Plusieurs solutions s'offrent à toi :

Trankilou OKLM ? Alors visites le lien de l'application en production :
```
  @ https://bdx-landing-pages.herokuapp.com/
```

Sinon, tu peux lancer un petit http://localhost:3000 des familles avec un :
```
  $ rails server
```
Et à toi la gloire, teste, re-teste, observe et inspecte!

Envie de tester les modèles ? Nous te laissons lacher la bonne vieille :
```
  $ rails console
```

Enfin, pour une inspection minutieuse et de fond en comble, utilise donc ton EDI préféré et analyse chaque ligne de nos codes !

**NOTA : $ = terminal || > = console rails || @ = web browser**

## Versions :

*Ruby 2.5.1*

*Rails 5.2.0*

*Bundle 1.16.1*

## Contributeurs :

@bab - Baptiste ROGEON

@massimo - Maxime FLEURY

<p align="center">
  <img src="THP_BDX.png"/>
</p>

## Pour aller plus loin :

Bon, voila comment après une journée comme celle-ci, on a envie de finir ....

https://www.koreus.com/video/court-metrage-thats-life.html
