# galaxroom-docs
Customised [Docusaurus](https://github.com/facebook/docusaurus) configuration

## Quickstart

Installs a new Docusaurus website and applies the customizations.

1. Install dependencies: https://docusaurus.io/docs/installation#requirements
2. `git clone https://github.com/cstogmuller/galaxroom-docs && cd galaxroom-docs`
2. `chmod +x quickstart.sh && ./quickstart.sh docusaurus`
3. `mv docusaurus/ ~/somedir/`
4. `sudo mkdir /var/www/somedir && sudo ln -s /var/www/somedir ~/somedir/build`
4. Add the server block from nginx.txt to your nginx configuration
5. Run `~/somedir/publish.sh` every time you change something

## Credits

[Docusaurus](https://github.com/facebook/docusaurus) by facebook  
[Docusaurus Search Local](https://github.com/easyops-cn/docusaurus-search-local) by easyops-cn