#!/bin/sh

ROOT_DIR=../../../
PLATFORM_DIR=${ROOT_DIR}/platform
PLATFORM_LIB_DIR=${PLATFORM_DIR}/lib
PLATFORM_LIB=${PLATFORM_LIB_DIR}/edu.ustc.cs.compile.platform.core.jar:\
${PLATFORM_LIB_DIR}/edu.ustc.cs.compile.platform.interfaces.jar:\
${PLATFORM_LIB_DIR}/edu.ustc.cs.compile.platform.util.jar

AST_DIR=${ROOT_DIR}/lib/AST/3.1.2
AST_LIB=${AST_DIR}/org.eclipse.core.resources_3.1.2.jar:\
${AST_DIR}/org.eclipse.core.runtime_3.1.2.jar:\
${AST_DIR}/org.eclipse.jdt.core_3.1.2.jar:\
${AST_DIR}/org.eclipse.jdt.ui_3.1.2.jar

JAVACUP_DIR=${ROOT_DIR}/tools/java-cup
JAVACUP_RUNTIME_LIB=${JAVACUP_DIR}/java-cup-11a-runtime.jar

PARSER_DIR=${ROOT_DIR}/lib
PARSER_LIB=${PARSER_DIR}/edu.ustc.cs.compile.parser.simpleminijool.jar

LAB1_CLS_DIR=../classes

CLASSPATH=${PLATFORM_LIB}:${AST_LIB}:${JAVACUP_RUNTIME_LIB}:${PARSER_LIB}:${LAB1_CLS_DIR}

if [ $# -lt 1 ]; then
    java -classpath ${CLASSPATH} \
         edu.ustc.cs.compile.platform.Main \
         --cfg-file ../config/lab1-parser.xml
else
    java -classpath ${CLASSPATH} \
         edu.ustc.cs.compile.platform.Main $*
fi