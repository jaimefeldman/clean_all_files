#!/bin/bash


file_count=$(ls -l | wc -l)
((file_count=file_count-1 ))
current_path=$(pwd)

echo "Atención! serán eliminados permanentemente "$file_count" archivos del"
echo "Directorio "$current_path
read -n 1 -p "¿desea continuar? [N/s]:" awnser
if [ "$awnser" == "s" ]; 
then
	echo "ejecutnado script..."
    echo "Ingrese clave de administador:"
	if [[ ! $(sudo echo 0) ]]; then exit; fi

	echo "[ Iniciando Eliminacion...]"
	count=0
	for file in *; 
	do
		if [[ -f "$file" ]]; then
			the_file=$(du -sh "$file")
			#echo $((count=count+1)) $file_size
			#size=$(printf "%s" "$the_file" | awk '{ print $1 }')
			file_size=$(printf "%s" "$the_file" | awk '{ print $1 }')
			file_name=$(printf "%s" "$the_file" | awk '{ print $2 }')
			cat /dev/zero | 
		fi
	done
	#for entry in "$current_path"/*
	#do
	#	echo $entry 
		#echo "$entry"
		#echo $file_size
	#done
fi


