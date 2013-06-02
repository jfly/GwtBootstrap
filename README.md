How to build

- Download gwt (https://developers.google.com/web-toolkit/download) and extract somewhere
- Create a symlink to your installation of gwt
   - `ln -s /home/jeremy/thirdrepos/gwt-2.5.1 gwt`
- Run make
   - `make` (or `make compile`) to generate war/gwting/gwting.nocache.js
   - `make doc` to generate doc/jsdoc.html
      - This command may fail on java 7. It appears to be a bug with gwtexporter (https://code.google.com/p/gwt-exporter/)
- View demo.html in your favorite browser!


HOW TO PROVIDE OWN GRAPHICS SHIZZZ

http://concentricsky.com/blog/2011/mar/emulating-jre-classes-gwt
