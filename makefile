PACKAGE_PATH = com/craftinginterpreters/lox/
TOOL_PATH = com/craftinginterpreters/tool/
CLASSPATH = -classpath classes
JFLAGS = -d classes
JC = javac
JAVA = java

default: build_tools compile run

build_tools:
	make -f $(TOOL_PATH)makefile

compile:
	javac $(JFLAGS) $(PACKAGE_PATH)*.java

run:
	java $(CLASSPATH) com.craftinginterpreters.lox.Lox

clean:
	rm -rf classes