#/bin/bash
if [ -z ${UNSETVAR+x} ] ; then 
  echo "var is unset"; 
  else echo "var is set to '$UNSETVAR'";
fi
