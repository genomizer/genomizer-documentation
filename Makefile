.PHONY: all clean

all: main.pdf
sysdes: desktop-sysdes webb-sysdes server-sysdes ios-sysdes android-sysdes
implementation: desktop-implement webb-implement android-implement ios-implement server-implement
id: desktop-id webb-id android-id ios-id 

main.pdf: main.tex
	pdflatex main.tex && makeindex main.nlo -s nomencl.ist -o main.nls && pdflatex main.tex

################# User Manual [X] #############################

user-manual: ./alternativMain/manual_main.tex
	pdflatex ./alternativMain/manual_main.tex && pdflatex ./alternativMain/manual_main.tex


################### Introduction Chapter [X] #########################

introduction: ./alternativMain/intro_main.tex
	pdflatex ./alternativMain/intro_main.tex && pdflatex ./alternativMain/intro_main.tex

################### Deployment Chapter [X] #########################

deployment: ./alternativMain/deply_main.tex
	pdflatex ./alternativMain/deply_main.tex && pdflatex ./alternativMain/deply_main.tex


################### Architectual Chapter [X] #########################

arch: ./alternativMain/arch_main.tex
	pdflatex ./alternativMain/arch_main.tex && pdflatex ./alternativMain/arch_main.tex

################### Implementation Chapter [X] #########################

desktop-implement: ./alternativMain/implement/desk_implement_main.tex
	pdflatex ./alternativMain/implement/desk_implement_main.tex && pdflatex ./alternativMain/implement/desk_implement_main.tex

webb-implement: ./alternativMain/implement/web_implement_main.tex
	pdflatex ./alternativMain/implement/web_implement_main.tex && pdflatex ./alternativMain/implement/web_implement_main.tex

android-implement: ./alternativMain/implement/and_implement_main.tex
	pdflatex ./alternativMain/implement/and_implement_main.tex && pdflatex ./alternativMain/implement/and_implement_main.tex

ios-implement: ./alternativMain/implement/ios_implement_main.tex
	pdflatex ./alternativMain/implement/ios_implement_main.tex && pdflatex ./alternativMain/implement/ios_implement_main.tex

server-implement: ./alternativMain/implement/serv_implement_main.tex
	pdflatex ./alternativMain/implement/serv_implement_main.tex && pdflatex ./alternativMain/implement/serv_implement_main.tex

################### Interaction Design Chapter [X] ######################

desktop-id: ./alternativMain/id/desk_id_main.tex
	pdflatex ./alternativMain/id/desk_id_main.tex && pdflatex ./alternativMain/id/desk_id_main.tex

webb-id: ./alternativMain/id/web_id_main.tex
	pdflatex ./alternativMain/id/web_id_main.tex && pdflatex ./alternativMain/id/web_id_main.tex
	
android-id: ./alternativMain/id/and_id_main.tex
	pdflatex ./alternativMain/id/and_id_main.tex && pdflatex ./alternativMain/id/and_id_main.tex

ios-id: ./alternativMain/id/ios_id_main.tex
	pdflatex ./alternativMain/id/ios_id_main.tex && pdflatex ./alternativMain/id/ios_id_main.tex

################# System Design Chapter [X] #############################


desktop-sysdes: ./alternativMain/sysdes/desk_sysdes_main.tex
	pdflatex ./alternativMain/sysdes/desk_sysdes_main.tex && pdflatex ./alternativMain/sysdes/desk_sysdes_main.tex

webb-sysdes: ./alternativMain/sysdes/web_sysdes_main.tex
	pdflatex ./alternativMain/sysdes/web_sysdes_main.tex && pdflatex ./alternativMain/sysdes/web_sysdes_main.tex
	
android-sysdes: ./alternativMain/sysdes/and_sysdes_main.tex
	pdflatex ./alternativMain/sysdes/and_sysdes_main.tex && pdflatex ./alternativMain/sysdes/and_sysdes_main.tex

ios-sysdes: ./alternativMain/sysdes/ios_sysdes_main.tex
	pdflatex ./alternativMain/sysdes/ios_sysdes_main.tex && pdflatex ./alternativMain/sysdes/ios_sysdes_main.tex

server-sysdes: ./alternativMain/sysdes/serv_sysdes_main.tex
	pdflatex ./alternativMain/sysdes/serv_sysdes_main.tex && pdflatex ./alternativMain/sysdes/serv_sysdes_main.tex

################# Appendices Chapter ############################# 

user-stories:
	pdflatex ./alternativMain/appendix/us_main.tex && pdflatex ./alternativMain/appendix/us_main.tex

androidUML:
	pdflatex ./alternativMain/appendix/andUML_main.tex && pdflatex ./alternativMain/appendix/andUML_main.tex

#iosUML:
#	pdflatex ./alternativMain/appendix/iosUML_main.tex && pdflatex ./alternativMain/appendix/iosUML_main.tex

servUML:
	pdflatex ./alternativMain/appendix/dlUML_main.tex && pdflatex ./alternativMain/appendix/dlUML_main.tex

api:
	pdflatex ./alternativMain/appendix/serverAPI_main.tex && pdflatex ./alternativMain/appendix/serverAPI_main.tex

#serverCMD:
#	pdflatex ./alternativMain/appendix/serverCMD_main.tex && pdflatex ./alternativMain/appendix/serverCMD_main.tex

issues:
	pdflatex ./alternativMain/appendix/issues_main.tex && pdflatex ./alternativMain/appendix/issues_main.tex

################################ CLEAN ########################
clean:
	rm -rf *.pdf *.out *.aux *.toc *.log *.gz
