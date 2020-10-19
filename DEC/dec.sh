#!/usr/bin/env bash


##====================================================================##
##                                                                    ##
## SOFTWARE: DEC - Development environment creator.                   ##
## AUTHOR: Charles Dantas (chameleon)                                 ##
## VERSION: 0.01                                                      ##
## CREATION DATE: 04/01/2020                                          ##
##                                                                    ##
##====================================================================##


  create_web_environment ()
{

    read -p "Name of project: "  name_of_project;
    mkdir $name_of_project;
    cd $name_of_project;

    mkdir private && mkdir public && mkdir src && touch README.md;

    cd private && touch Routes && touch Connection && touch System && cd ..;
    cd public && touch index.html && cd ..;
    cd src && mkdir js && mkdir css && mkdir imgs && mkdir audios && mkdir special;

    cd js && touch Exceptions.js && touch Main.js && cd .. &&
    cd css && touch style.css && cd ..;

}


  create_react_native_environment ()
{

    read -p "Name of project: "  name_of_project;
    react-native init $name_of_project
    cd $name_of_project && touch README.md;

}


  create_c_environment ()
{

    read -p "Name of project: "  name_of_project;
    mkdir $name_of_project;
    cd $name_of_project;
    touch Main.c && touch README.md;

}


  create_cpp_environment ()
{

    read -p "Name of project: "  name_of_project;
    mkdir $name_of_project;
    cd $name_of_project;
    touch Main.cpp && touch README.md;

}


  create_cs_environment ()
{

    read -p "Name of project: "  name_of_project;
    mkdir $name_of_project;
    cd $name_of_project;
    
    mkdir private && mkdir views && mkdir src && touch README.md;

    cd private && touch Crud.cs && touch Connection.cs && cd ..;
    cd views && touch Main.cs && cd ..;
    cd src && mkdir imgs && mkdir audios && mkdir special;

}


  create_cobol_environment ()
{

    read -p "Name of project: "  name_of_project;
    mkdir $name_of_project;
    cd $name_of_project;

    touch Main && touch README.md;

}


  create_perl_environment ()
{

    read -p "Name of project: "  name_of_project;
    mkdir $name_of_project;
    cd $name_of_project;
    touch Main.pl && touch README.md;

}


  create_python_environment ()
{

    read -p "Name of project: "  name_of_project;
    mkdir $name_of_project;
    cd $name_of_project;
    touch Main.py && touch README.md;

}


  create_java_jframe_environment ()
{

    read -p "Name of project: "  name_of_project;
    mkdir $name_of_project;
    cd $name_of_project;
    
    mkdir private && mkdir views && mkdir src && touch README.md;

    cd private && touch Crud.java && touch Connection.java && cd ..;
    cd views && touch Main.java && cd ..;
    cd src && mkdir imgs && mkdir audios && mkdir special;    

}


  create_r_environment ()
{

    read -p "Name of project: "  name_of_project;
    mkdir $name_of_project;
    cd $name_of_project;
    touch Main.r && touch README.md;

}


echo "###=========================================###";
echo "#### DEC - Development environment creator ####";
echo "###=========================================###";
echo "1) Create web environment";
echo "2) Create react-native environment";
echo "3) Create c environment";
echo "4) Create c++ environment";
echo "5) Create c# environment";
echo "6) Create cobol environment";
echo "7) Create perl environment";
echo "8) Create python environment";
echo "9) Create java JFRAME environment";
echo "10) Create r environment";
echo "-1) EXIT";


read -p "Option: " option_main;


case $option_main in
    1)
        create_web_environment
        ;;
    2)
        create_react_native_environment
        ;;
    3)
        create_c_environment
        ;;
    4)
        create_cpp_environment
        ;;
    5)
        create_cs_environment
        ;;
    6)
        create_cobol_environment
        ;;
    7)
        create_perl_environment
        ;;
    8)
        create_python_environment
        ;;
    9)
        create_java_jframe_environment
        ;;
    10)
        create_r_environment
        ;;
    -1)
        ;;
    *) 
        echo "Option no avaible";
        ;;
    esac

