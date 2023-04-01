echo "echo Restoring environment" > "/home/mostafa/CLionProjects/qt_nn/build/deactivate_conanrunenv-release-x86_64.sh"
for v in FONTCONFIG_FILE FONTCONFIG_PATH ICU_DATA ACLOCAL_PATH AUTOMAKE_CONAN_INCLUDES PATH M4
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "/home/mostafa/CLionProjects/qt_nn/build/deactivate_conanrunenv-release-x86_64.sh"
    else
        echo unset $v >> "/home/mostafa/CLionProjects/qt_nn/build/deactivate_conanrunenv-release-x86_64.sh"
    fi
done


export FONTCONFIG_FILE="/root/.conan2/p/fontc79604115a3284/p/bin/etc/fonts/fonts.conf:$FONTCONFIG_FILE"
export FONTCONFIG_PATH="/root/.conan2/p/fontc79604115a3284/p/bin/etc/fonts:$FONTCONFIG_PATH"
export ICU_DATA="/root/.conan2/p/icu5a55394cebfdb/p/res/icudt72l.dat:$ICU_DATA"
export ACLOCAL_PATH="$ACLOCAL_PATH:/root/.conan2/p/libtoc3f2ee7bc68e6/p/res/aclocal"
export AUTOMAKE_CONAN_INCLUDES="$AUTOMAKE_CONAN_INCLUDES:/root/.conan2/p/libtoc3f2ee7bc68e6/p/res/aclocal"
export PATH="/root/.conan2/p/autom771d14beb0531/p/bin:/root/.conan2/p/autoc84ad36d1c05b9/p/bin:/root/.conan2/p/m4328c8d04ee36f/p/bin:$PATH"
export M4="/root/.conan2/p/m4328c8d04ee36f/p/bin/m4"