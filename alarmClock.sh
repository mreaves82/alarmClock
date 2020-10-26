#!/bin/bash

echo Welcome To Alarm/Timer 
echo by Matt Reaves
#varialbes for increments
i=0
t=0
#array for random song selection 
randomSongs=("abbaDancingQueen.mp3" "beatlesSgtPepper.mp3" 
	"petshopboysOpportunites.mp3" "thehumanleagueDontYouWantMe.mp3" 
	"blondieHeartOfGlass.mp3")
#ask for user name
echo What is the users name?
   read -t 5 name1
#while no input 5 second timer till question again     

   while [[ $name1 == "" ]]
      do 
   	   echo please enter you name
   	   read -t 5 name1
   	
       
        (( i++ ))
       
       if [ $i == 5 ] || [ $i == 10 ] 
         then
           echo "I don't have all fucking day nor do you"
           fi
   	   done
   
echo ''
#ask for desired timer length 
echo Hi $name1.... How long do you wish to set the alarm for?
#while no entry reminder to input every 5 seconds
   while [[ $time1 == "" ]]
      do 
   	   echo please enter alarm duration 
   	   read -t 5 time1
   	   
       
        (( t++ ))
       
       if [ $t == 5 ] || [ $t == 10 ] 
         then
           echo "I don't have all fucking day nor do you"
           fi
   	   
   	   done

 PS3=$name1", please select an alarm option."
 choices=("The Beatles - Good Morning" "The Clash - Rock The Casbah"
 	"David Bowie - Ashes To Ashes" "Pet Shop Boys - West End Girls" 
 	"Surprise Me")
 path1='~/Scripts/alarmClock/audio/'
 select choice in "This Choice" ${choices[@]}
 	do
 	   case $choice in
 	     "The Beatles - Good Morning")
			sleep $time1 && vlc $path1"beatlesGoodMorning.mp3"
			break
			;;
		 "The Clash - Rock The Casbah") 
			sleep $time1 && vlc $path1
			break
			;;
	     "David Bowie - Ashes To Ashes")
			sleep $time1 && vlc $path1
			break
			;;
	     "Pet Shop Boys - West End Girls")
			sleep $time1 && vlc $path1
			break
			;;
	     "Surprise Me")
		esac

	done


