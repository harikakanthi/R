# a function to calculate the scores
scoring = function(player1_choice,player2_choice,choice){
  a=player1
  if (choice==1){
    b="Computer"
  } else{
    b=player2
  }
  choice1=player1_choice
  choice2=player2_choice

  if (choice1=="rock" & choice2=="paper"){
    score2=score2+1
    print(paste(b," wins"))
  } else if (choice1=="paper" & choice2=="rock"){
    score1=score1+1
    print(paste(a," wins"))
  } else if (choice1=="rock" & choice2=="scissors"){
    score1=score1+1
    print(paste(a," wins"))
  } else if (choice1=="scissors" & choice2=="rock"){
    score2=score2+1
    print(paste(b," wins"))
  } else if (choice1=="paper" & choice2=="scissors"){
    score2=score2+1
    print(paste(b," wins"))
  } else if (choice1=="scissors" & choice2=="paper"){
    score1=score1+1
    print(paste(a," wins"))
  }
  return(list(score1,score2))
}

score1=0
score2=0
player2="  none   "
ans="yes"
while (ans=="yes"){


  print("Select the option
        1. Computer
        2. players
        Enter the number")
  choice=as.integer(readline(prompt = "computer or two players:__"))

  if (choice==1){
    player1=readline(prompt = "Enter your name:__")
    games=as.integer(readline(prompt = "Number of games you would like to play?__
                              select a number between 1 to 10 :__  "))

    if ( games >=1 & games <=10){
      for (i in 1:games){
        player1_choice=readline(prompt = "Enter your choice
                          rock
                          paper
                          Scissors:__")
        player2_choice=sample(c("rock","paper","scissors"),1)
        print(paste("Computer chooses:__",player2_choice))
        if (player1_choice==player2_choice){
          print("It is a TIE!")
        } else {
          new_score=scoring(player1_choice,player2_choice,choice)
          score1=new_score[[1]]
          score2=new_score[[2]]
        }
      }

    } else {
      print("Invalid selection!!!
            Please select a valid number between 1 and 10")
    }
  } else {
    player1=readline(prompt = "Enter name of player1:__")
    player2=readline(prompt = "Enter name of player2:__ ")
    games=as.integer(readline(prompt = "Number of games you would like to play?__
                              select a number between 1 to 10 :__  "))
    if ( games >=1 & games <=10){
      for (i in 1:games){
        player1_choice=readline(prompt = "Enter your choice
                          rock
                          paper
                          Scissors:__")
        player2_choice=readline(prompt = "Enter your choice
                          rock
                          paper
                          Scissors:__")
        if (player1_choice==player2_choice){
          print("It is a TIE!")
        } else {
          new_score=scoring(player1_choice,player2_choice,choice)
          score1=new_score[[1]]
          score2=new_score[[2]]
        }
      }
    }
  }


  ans=readline(prompt = "dp you want to play again?__")
  if (ans=="no"){

    print(paste("Your score:_ ",score1))
    print(paste("Computer score:_ ",score2))

    if (score1>score2){
      print(paste(player1," wins the game..!!!"))
      print(paste("Congratulations ",player1))
    } else if (score1<score2){
      if (choice==1){
        print("Computer wins the game..!!!")
      } else {
        print(paste(player2, "wins the game...!!!"))
        print(paste("Congratulations",player2))
      }
    } else {
      print("It is a TIE..!!!")
    }

    print("The game ends here..!!!")
    print("Thank you for playing")
    print("Return again")
    break
  }
}
