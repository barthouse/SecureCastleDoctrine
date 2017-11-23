# 2017-November-22    Bart House
# Copied from CastleDoctrine
#
# $1 - platform selection (1-3)
# $2 - "clean" if make clean is desired
#
# NOTE: There is a bug with clean in the windows build.  When we clean, end up removing the *.tga files
#       which are not currently buildable.  We attempt to "convert" the png to tga using the tool convert
#       but instead invoked the convert command of MinGW.  This needs investigating.

cd ${ROOTDIR}

cd CastleDoctrine
chmod u+x ./configure
./configure $1 || exit 1

cd gameSource

echo "Building CastleDoctrine..."

if [ "$2" = "clean" ]
then
	echo "Cleaning..."
	make clean
fi

echo "Building..."

if make ; then
	echo "Build successful"
else
    echo "Build failed"
	echo "Hit any key to exit"
	read foo
	exit 1
fi

cd ../..

echo "Copying to bin"

mkdir -p bin
mkdir -p bin/graphics
mkdir -p bin/gameElements
mkdir -p bin/settings
mkdir -p bin/languages

cp CastleDoctrine/gameSource/CastleDoctrine ./bin/CastleDoctrineApp
cp CastleDoctrine/documentation/Readme.txt ./bin
cp CastleDoctrine/no_copyright.txt ./bin
cp CastleDoctrine/gameSource/graphics/* ./bin/graphics
cp CastleDoctrine/gameSource/settings/* ./bin/settings
cp CastleDoctrine/gameSource/languages/* ./bin/languages
cp CastleDoctrine/gameSource/language.txt ./bin/

cp -r CastleDoctrine/gameSource/gameElements/* ./bin/gameElements

echo "Run ./bin/CastleDoctrineApp to play."
echo "Hit any key to exit"
read foo
