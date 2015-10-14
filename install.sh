cd $HOME

safeInst ()
{
   if [[ -z "$1" ]];then
 	echo usage $0 file
	exit
   fi

   tgt=$1
   echo Processing file: $tgt
   if [ -e $tgt ];then
	# test for a link
	if [ -L $tgt ];then
	   rm $tgt
        else	
	    mv $tgt $tgt.bkup
	fi
   fi
   ln -s $HOME/dotfiles/$tgt $HOME/$tgt
}
echo Target Path: $HOME
safeInst .bash_aliases
safeInst .bash_profile

