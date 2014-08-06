:<<EOF
 *  $Id: DMPSWInstallation.sh, 2014-08-06 18:20:23 DAMPE $
 *  Author(s):
 *    Chi WANG (chiwang@mail.ustc.edu.cn) 06/08/2014
EOF


download(){
  url="https://github.com/USTCLab312"
  for dir in $@;do
    git clone "$url/DMPSW$dir" $dir
  done
}

install(){
  for dir in $@;do
    pushd $dir >&/dev/null
    scons
    popd >&/dev/null
  done
}

download Event Configure

install Configure Event

