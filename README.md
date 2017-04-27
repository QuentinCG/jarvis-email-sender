## Description
Send email with Jarvis (base for other plugins)

<img src="https://raw.githubusercontent.com/QuentinCG/jarvis-email-sender/master/presentation.png" width="100">


## Usage
```
You: Envoies le mail d'exemple
Jarvis: Mail envoyé.
[Mail envoyé avec uniquement du texte]

You: Envoies le mail d'exemple discrètement
[Mail envoyé avec uniquement du texte]

You: Envoies un mail avec pièces jointes
Jarvis: Mail envoyé.
[Mail envoyé avec du texte, une image et un fichier texte en pièces jointes]

You: Envoies un mail avec pièces jointes discrètement
[Mail envoyé avec du texte, une image et un fichier texte en pièces jointes]
```


## How to install

1) Add this plugin to your Jarvis assistant (<a target="_blank" href="http://domotiquefacile.fr/jarvis/content/plugins">more info here</a>): ```./jarvis.sh -p https://github.com/QuentinCG/jarvis-email-sender```

2) Configure the <a target="_blank" href="https://github.com/QuentinCG/jarvis-email-sender/blob/master/config.sh">configuration file</a> to match your requirements.

3) Use the ```jv_pg_es_send_email``` function in any other plugin or in this one (check examples in <a target="_blank" href="https://github.com/QuentinCG/jarvis-email-sender/blob/master/fr/commands">command file</a>).

4) Enjoy


## Author
[Quentin Comte-Gaz](http://quentin.comte-gaz.com/)


## License

This project is under MIT license. This means you can use it as you want (just don't delete the plugin header).


## Contribute

If you want to add more examples or improve the plugin, just create a pull request with proper commit message and right wrapping.
