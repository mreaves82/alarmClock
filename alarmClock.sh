#!/bin/bash

echo Welcome To Alarm/Timer 
echo by Matt Reaves
#varialbes for increments
i=0
t=0

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

#array for random song selection 
randomSongs=("abbaDancingQueen.mp3" "beatlesSgtPepper.mp3" 
	"petshopboysOpportunites.mp3" "thehumanleagueDontYouWantMe.mp3" 
	"blondieHeartOfGlass.mp3")

PS3=$name1", please select an alarm option."
choice1='The Beatles - Good Morning';
choice2="The Clash - Rock The Casbah";
choice3="David Bowie - Ashes To Ashes";
choice4="Pet Shop Boys - West End Girls";
choice5="Surprise Me";
choices=($choice1 $choice2 $choice3 $choice4 $choice5)
path1="~/Scripts/alarmClock/audio/"
select choice in 'The Beatles - Good Morning' "The Clash - Rock The Casbah" 
    "David Bowie - Ashes To Ashes" "Pet Shop Boys - West End Girls" "Surprise Me"
 	do
 	   case $choice in
 	      $choice1)
		    sleep $time1 && vlc ~/Scripts/alarmClock/audio/beatlesGoodMorning.mp3
			break
			;;
		 $choice2) 
			sleep $time1 && vlc ~/Scripts/alarmClock/audio/theclashRockTheCasbah.mp3
			break
			;;
	     $choice3)
			sleep $time1 && vlc ~/Scripts/alarmClock/audio/davidbowieAshesToAshes.mp3
			break
			;;
	     $choice4) 
			sleep $time1 && vlc ~/Scripts/alarmClock/audio/petshopboysWestEndGirls.mp3
			break
			;;
	     $choice5)
			sleep $time1 && vlc ~/Scripts/alarmClock/audio/${randomSongs[$(( $RANDOM % 5 +1 ))]}
		esac

	done


