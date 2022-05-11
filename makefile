PACKAGE_PATH = com/craftinginterpreters/lox/
TOOL_PATH = com/craftinginterpreters/tool/
CLASSPATH = -classpath classes
JFLAGS = -d classes

default: build_tools compile run

build_tools:
	make -f $(TOOL_PATH)makefile

compile:
	javac $(JFLAGS) $(PACKAGE_PATH)*.java

run:
	java $(CLASSPATH) com.craftinginterpreters.lox.Lox

run_debug:
	java $(CLASSPATH) -Xdebug -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n com.craftinginterpreters.lox.Lox

debug:
	jdb -attach 8000

clean:
	rm -rf classes