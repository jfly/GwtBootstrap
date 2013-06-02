GWT_DIR=gwt/

GWT_MODULE=com.jflei.gwtbootstrap

JAVA_SOURCES=$(shell find src/ -name '*.java')

all: compile

war/gwting/gwting.nocache.js: $(JAVA_SOURCES) $(GWT_DIR)
	java -cp "gwtexporter-2.4.0.jar:$(GWT_DIR)*:src/" com.google.gwt.dev.Compiler -strict $(GWT_MODULE)

compile: war/gwting/gwting.nocache.js

doc/jsdoc.html: $(JAVA_SOURCES) $(GWT_DIR)
	# This seems to blow up with jdk7
	javadoc -public -verbose -sourcepath src -classpath "src:gwtexporter-2.4.0.jar:$(GWT_DIR)*" -d doc -docletpath gwtexporter-2.4.0.jar -doclet org.timepedia.exporter.doclet.JsDoclet $(GWT_MODULE)

doc: doc/jsdoc.html

clean:
	rm -rf gwt-unitCache
	rm -rf war
	rm -rf doc

.PHONY: all compile doc clean
