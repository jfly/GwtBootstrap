GWT_DIR=gwt/

GWT_MODULE=com.jflei.gwtbootstrap

all: compile

compile: $(GWT_DIR)
	java -cp "gwtexporter-2.4.0.jar:$(GWT_DIR)*:src/" com.google.gwt.dev.Compiler -strict $(GWT_MODULE)

doc: $(GWT_DIR)
	# This seems to blow up with jdk7
	javadoc -public -verbose -sourcepath src -classpath "src:gwtexporter-2.4.0.jar:$(GWT_DIR)*" -d doc -docletpath gwtexporter-2.4.0.jar -doclet org.timepedia.exporter.doclet.JsDoclet $(GWT_MODULE)

clean:
	rm -rf gwt-unitCache
	rm -rf war
	rm -rf doc
