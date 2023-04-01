echo "echo Restoring environment" > "/home/mostafa/CLionProjects/qt_nn/build/deactivate_conanbuildenv-release-x86_64.sh"
for v in ACLOCAL_PATH AUTOMAKE_CONAN_INCLUDES AC_MACRODIR autom4te_perllibdir AUTOCONF AUTORECONF AUTOHEADER AUTOM4TE M4 ICU_DATA
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "/home/mostafa/CLionProjects/qt_nn/build/deactivate_conanbuildenv-release-x86_64.sh"
    else
        echo unset $v >> "/home/mostafa/CLionProjects/qt_nn/build/deactivate_conanbuildenv-release-x86_64.sh"
    fi
done


export ACLOCAL_PATH="$ACLOCAL_PATH:/root/.conan2/p/libtoc3f2ee7bc68e6/p/res/aclocal"
export AUTOMAKE_CONAN_INCLUDES="$AUTOMAKE_CONAN_INCLUDES:/root/.conan2/p/libtoc3f2ee7bc68e6/p/res/aclocal"
export AC_MACRODIR="/root/.conan2/p/autoc84ad36d1c05b9/p/res/autoconf"
export autom4te_perllibdir="/root/.conan2/p/autoc84ad36d1c05b9/p/res/autoconf"
export AUTOCONF="/root/.conan2/p/autoc84ad36d1c05b9/p/bin/autoconf"
export AUTORECONF="/root/.conan2/p/autoc84ad36d1c05b9/p/bin/autoreconf"
export AUTOHEADER="/root/.conan2/p/autoc84ad36d1c05b9/p/bin/autoheader"
export AUTOM4TE="/root/.conan2/p/autoc84ad36d1c05b9/p/bin/autom4te"
export M4="/root/.conan2/p/m4328c8d04ee36f/p/bin/m4"
export ICU_DATA="/root/.conan2/p/icu5a55394cebfdb/p/res/icudt72l.dat:$ICU_DATA"