pwd
mkdir -p _test
cd _test

if which x86_64-w64-mingw32-gcc; then
    CC=x86_64-w64-mingw32-gcc
else
    CC=gcc
fi

echo "Using compiler: $CC"

echo "include..."
#ls -a $INCLUDE
echo "lib.."
export LIBEV_LIB_PATH=$(echo ${LIBEV_LIBS} | cut -c 3- | awk '{print $1}')

$CC ./../../esy/test.c -o ./test.exe $LIBEV_CFLAGS $LIBEV_LIBS

# export PATH=$PATH:$cur__include:$cur__lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LIBEV_LIB_PATH

#echo "Augmented path: $PATH"

echo "Copying binaries..."
#cp $cur__bin/*.dll .

echo "Test executable path:"
ls -a .

./test.exe
