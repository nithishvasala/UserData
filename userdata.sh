	 # !/bin/bash
	 # author - nithish vasala
	 # date - 20/10/2020
	 # 

 # --------------------------------------------------------------------------------#

#start
	#clear the screen
	while [[ true ]]; do
	
	# main menu
	echo " "
	echo "------------------- Main Menu ----------------------"
	echo " "
	echo "a. Add data"
	echo "b. retrive data"
	echo "c. update data"
	echo "d. delete data"
	echo "e. exit"
	echo " "
    
    # read user input.
	read -p "please choose a option : " abcde
		# conditions to perform operations.
	case $abcde in
		# while loop for iteration.
		a)	while [[ true ]]; do
			
	 		echo " "
	 		echo "Enter details"
	 		echo " "
	 		# read user details.
	 		read -p "name : " name
	 		read -p "age : " age
	 		read -p "qualification : " qualification
	 		read -p "email : " email
		
		# ask user permission to save data.
	 	read -p "save data? " yn
	 	case $yn in
	 	[Yy]* ) echo -e " $name \t\t\t $age \t\t\t $qualification \t\t\t $email
	 \n------------------------------------------------------------------------------" >> usersData.txt
	  
	  echo "deatils saved successfully...!!!"
	  echo " " 
	  # loop for iteration.
	  	while [[ true ]]; do
	  	read -p "Do you want to add more data ?" yn
		case $yn in
	  		[Yy]* ) break;; 
	  		[Nn]* ) clear
	 				echo "back to main menu";break 2;;
	 			* ) echo "please enter valid option"
	 				echo " ";;
	  		esac
	  	done
	  ;;
	[Nn]*) exit;;
	   * ) echo "please enter valid option";;
	esac
done
;;
		# retrieve data.
	 	b ) clear
	 		echo "retrieving data..."
	 		sleep 2 
	 		cat usersData.txt;;

	 	# edit data.
	 	c ) nano usersData.txt ;;
	 	
	 	# delete data
	 	d ) # check file size.
	 		filesize=$(stat -c%s usersData.txt)

	 		if [[ $filesize > 0 ]]; then
	 			> usersData.txt
	 			echo "file content deleted successfully"
	 		else
	 			echo "file is already empty"
	 			echo -e "------------------------------------------------------------------------------\n
 Name			age			qualification			email
\n------------------------------------------------------------------------------" >> usersData.txt

	 		fi;;
	 		

	 	#exit
	 	e ) echo "good bye...!!!" 
	 		exit;;
	 	# provide valid input
	 	* ) echo " please choose valid option";;
	esac
	done
#end

