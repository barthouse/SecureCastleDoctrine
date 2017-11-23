# 2017-November-22    Bart House
# Copied from CastleDoctrine
#
# $1 - platform selection (1-3)
# $2 - "clean" if make clean is desired
#

cd ${ROOTDIR}
echo "ROOTDIR=${ROOTDIR}"
read foo

cd CastleDoctrine
chmod u+x ./configure
./configure $1 || exit 1


cd gameSource

echo "Building CastleDoctrine..."

if [ "$2" = "clean" ]
then
	echo "cleaning..."
	make clean
fi

echo "making..."
#make || exit 1
make

echo "copying files..."
read foo

cd ../..

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

read foo

echo "Run ./bin/CastleDoctrineApp to play."
