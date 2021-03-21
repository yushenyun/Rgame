play <- function(id, name, seed){
  set.seed(seed)
  answer = c()
  while(TRUE){
    computer <- sample(1000:9999, 1, replace=T)
    computer <- as.character(computer)
    s1 <- substr(computer, 1, 1)
    s2 <- substr(computer, 2, 2)
    s3 <- substr(computer, 3, 3)
    s4 <- substr(computer, 4, 4)
    if((s1!=s2)&&(s1!=s3)&&(s1!=s4)&&(s2!=s3)&&(s2!=s4)&&(s3!=s4)&&(s1!="0")&&(s2!="0")&&(s3!="0")&&(s4!="0")){
      answer = c(s1, s2, s3, s4)
      break
    }
  }
  cat("學號: ", id, "； 姓名: ", name, "\n", sep="")
  cat("幾A幾B猜數字遊戲:", "\n", "=============================", "\n", sep="")
  count <- 0
  while(TRUE){
    count <- count + 1
    cat("第", count, "次猜測: ", sep="")
    guess <- readline()
    
    A <- 0
    B <- 0
    for(x in answer){
      if(grepl(x, guess, fixed=TRUE)){
        B <- B + 1
      }
    }
    for(i in 1:length(answer)){
      if(answer[i]==substr(guess, i, i)){
        A <- A + 1
        B <- B - 1
      }
    }
    if(A == 4){
      cat("=> 4A (遊戲結束)", sep="")
      break
    }
    else if(A == 0 && B == 0){
      cat("=> X", "\n", sep="")
    }
    else if(A==0){
      B <- as.character(B)
      cat("=> ", paste(B, "B", sep=""), "\n", sep="")
    }
    else if(B==0){
      A <- as.character(A)
      cat("=> ", paste(A, "A", sep=""), "\n", sep="")
    }
    else{
      A <- as.character(A)
      B <- as.character(B)
      A = paste(A, "A", sep="")
      B = paste(B, "B", sep="")
      cat("=> ", paste(A, B, sep=""), "\n", sep="")
    }
  }
}



play(410778067, "游世", 1546)
