#
# Useful variables for determining Python version and paths.
#
__python2="/usr/bin/python2"
__python3="/usr/bin/python3"

if [ -x ${__python2} ]; then
  python2_lib="$(${__python2} -c 'from distutils.sysconfig import get_python_lib; print(get_python_lib(0, 1))')"
  python2_sitelib="$(${__python2} -c 'from distutils.sysconfig import get_python_lib; print(get_python_lib())')"
  python2_include="$(${__python2} -c 'from distutils.sysconfig import get_python_inc; print(get_python_inc())')"
fi
if [ -x ${__python3} ]; then
  python3_version="$(${__python3} -c 'import sys; print(sys.version[:3])')"
  python3_lib="$(${__python3} -c 'from distutils.sysconfig import get_python_lib; print(get_python_lib(0, 1))')"
  python3_sitelib="$(${__python3} -c 'from distutils.sysconfig import get_python_lib; print(get_python_lib())')"
  python3_include="$(${__python3} -c 'from distutils.sysconfig import get_python_inc; print(get_python_inc())')"
fi
