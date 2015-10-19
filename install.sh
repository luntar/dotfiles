uroot=$HOME
cd $uroot

udst=$uroot/dotfiles/undo_data
ush=$uroot/dotfiles/undo.sh


safeInst ()
{
  EXPECTED_ARGS=2
  if [ $# -ne $EXPECTED_ARGS ]
  then
    echo "Usage: $0 {target file} {dest path}"
    exit $E_BADARGS
  fi

  tgt=$1
  dst=$2
  echo Processing file: $tgt to  $dst

  # If the target file exists, have the undo script restore the original
  if [ -e $dst/$tgt ];then
    mv $dst/$tgt $udst
    echo mv $udst/$tgt $dst >> $ush
  else
    echo rm $dst/$tgt >> $ush
  fi

  ln -s $uroot/dotfiles/$tgt $dst/$tgt
}

# VERIFY ENVIRONMENT
# If the "undo_data" directory exitsts, then bail
if [ -d $udst ];then
  echo You must first run the script $uroot/undo.sh
  exit 1
fi

rm $ush
# CREAT UNDO SCRIPT 
echo \# The dotfiles 'undo' script > $ush  
echo \# Data for undo is place in $udst >> $ush
#CREAT undo_data directory
mkdir -p $udst

safeInst .bash_aliases $uroot
safeInst .bashrc $uroot
safeInst .bash_profile $uroot
safeInst .dircolors $uroot
safeInst .prompt $uroot
safeInst .colordefs $uroot


# Finish up the undo file

echo [[ -d $udst ]] && echo rm -rf $udst >> $ush
chmod u+x $ush


