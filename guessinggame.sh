echo "Guess how many files are there in the current directory?"
function guess {
ans=$(ls -l | egrep "^-" | wc -l)
while true;
do  printf  "Enter guess = "
read guess
if [ $guess -lt $ans ]  
then  echo "Guess was low try again"
elif [ $guess -gt $ans ] 
then echo "guess was high try again"
else echo "Guessed Right!"
break
fi
done
}
guess

