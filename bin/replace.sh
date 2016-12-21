#!/bin/sh

# 실행위치 및 파일
#$(cd ${0%/*} && echo $PWD/)
#$(cd ${0%/*} && echo $PWD/${0##*/})

searchFunction()
{

	echo "찾을내용 입력. 종료:q,Q"
	
	read schStr
	

	if [ \( $schStr = q \) -o \( $schStr = Q \) ]
	then
		echo "종료."
		exit;
	fi
		
	echo "----------------------------------------------------------------"

}

strFunction()
{

	echo "변경할 내용 입력. 종료:q,Q"

	read Str
	
	if [ \( $Str = q \) -o \( $Str = Q \) ]
	then
		echo "종료."
		exit;
	fi

	echo "----------------------------------------------------------------"

}

pathFunction()
{

	echo "경로 입력. 종료:q,Q"

	read path
	
	if [ \( $path = q \) -o \( $path = Q \) ]
	then
		echo "종료."
		exit;
	fi

	echo "----------------------------------------------------------------"

}

if [ $1 ]
then

	play=$1

else

	echo "1)수정 2)찾기"

	read play

fi

case $play in
	1)

	if [ $2 ]
	then
		schStr=$2
	else
		searchFunction
	fi

	if [ $3 ]
	then
		Str=$3
	else
		strFunction
	fi

	if [ $4 ]
	then
		path=$4
	else
		pathFunction
	fi

	find $path -exec perl -pi -e 's/'$schStr'/'$Str'/g' {} \;
	;;
	
	2)
	searchFunction
	pathFunction

	if [ $2 ]
	then
		grep -R -n $schStr $path >> $2
	else
		grep -R -n $schStr $path
	fi
	;;

	*)
	echo "종료."
	exit;
	;;

esac
