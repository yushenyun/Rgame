computer <- sample(c("布","剪刀","石頭"),1, replace=T)

#exl3(b)
guess <- function(y){
  switch(y,
         a="剪刀",
         b="石頭",
         c="布",
         d="不玩了")
}
cat("請輸入你要出的拳頭(a: 剪刀, b: 石頭, c: 布, d: 不玩了):")
cat("玩家出:", guess(scan(what="char")))

#exl3(c)
set.seed(12345)
game <- function(){
  cat("### 剪刀石頭布遊戲開始 ### \n")
  repeat{
    computer <- sample(c("布","剪刀","石頭"),1, replace=T)
    cat("請輸入你要出的拳頭(a: 剪刀, b: 石頭, c: 布, d: 不玩了):\n")
    x <- scan(what="char")
    if(x == "d"){
      cat("謝謝再會!") 
      break}
    if(x == "a"){
      if(computer == "布"){cat("電腦出[ 布 ], 你出[ 剪刀 ], 你[ 贏 ]了!\n")}
      if(computer == "剪刀"){cat("電腦出[ 剪刀 ], 你出[ 剪刀 ], 你[ 平手 ]了!\n")}
      if(computer == "石頭"){cat("電腦出[ 石頭 ], 你出[ 剪刀 ], 你[ 輸 ]了!\n")}
    }
    if(x == "b"){
      if(computer == "布"){cat("電腦出[ 布 ], 你出[ 石頭 ], 你[ 輸 ]了!\n")}
      if(computer == "剪刀"){cat("電腦出[ 剪刀 ], 你出[ 石頭 ], 你[ 贏 ]了!\n")}
      if(computer == "石頭"){cat("電腦出[ 石頭 ], 你出[ 石頭 ], 你[ 平手 ]了!\n")}
    }
    if(x == "c"){
      if(computer == "布"){cat("電腦出[ 布 ], 你出[ 布 ], 你[ 平手 ]了!\n")}
      if(computer == "剪刀"){cat("電腦出[ 剪刀 ], 你出[ 布 ], 你[ 輸 ]了!\n")}
      if(computer == "石頭"){cat("電腦出[ 石頭 ], 你出[ 布 ], 你[ 贏 ]了!\n")}
    }
  }
}
game()
