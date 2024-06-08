# galaxroom-docs
Customised Docusaurus configuration

## Quickstart

Installs a new Docusaurus website and applies the customizations.

(Replace `somedir` with a directory name of your choice)
1. Install dependencies: https://docusaurus.io/docs/installation#requirements
2. `git clone https://github.com/cstogmuller/galaxroom-docs && cd galaxroom-docs`
2. `chmod +x quickstart.sh && ./quickstart.sh docusaurus`
3. `mv docusaurus/ ~/somedir/`
4. `sudo mkdir /var/www/somedir && sudo chown -R $USER:$USER /var/www/somedir && ln -s /var/www/somedir ~/somedir/build`
4. Add the server block from nginx.txt to your nginx configuration
5. Run `~/somedir/publish.sh` initially and each time you want to publish your changes in the future

## Credits

* [Docusaurus](https://github.com/facebook/docusaurus) - facebook  
* [Docusaurus Search Local](https://github.com/easyops-cn/docusaurus-search-local) - easyops-cn
