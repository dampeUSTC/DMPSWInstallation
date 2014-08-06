:<<EOF
 *  $Id: DMPSWInstallation.sh, 2014-08-06 18:20:23 DAMPE $
 *  Author(s):
 *    Chi WANG (chiwang@mail.ustc.edu.cn) 06/08/2014
EOF

prefix="DMPSWInstall"
#-------------------------------------------------------------------

download(){
  url="https://github.com/USTCLab312"
  for dir in $@;do
    git clone "$url/DMPSW$dir" $dir
  done
}

download Framework

pushd Framework #>&/dev/null
scons "prefix=$prefix"
#source $prefix/bin/thisdmpsw.sh
popd >&/dev/null

