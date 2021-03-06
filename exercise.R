rm(list = ls())
gc()
#####################################################
# 제 1절 회계등식
#####################################################
자산 <- 300000
부채 <- 200000
자본 <- 100000
자산 
부채 + 자본 
자산 ==   부채 + 자본 
print(자산)
options('scipen' = 10)
print(자산)
부채 + 자본
자산 == 부채 + 자본


#####################################################
# 제 2절 확장된 회계등식
#####################################################

자산 <- 500
비용 <- 200
차변 <- 자산 + 비용
차변

부채 <- 400
자본 <- 100
수익 <- 200
대변 <- 부채 + 자본 + 수익
대변

차변 == 대변

차변 <- 자산 + 비용
차변

부채 <- 400
자본 <- 100
수익 <- 200
대변 <- 부채 + 자본 + 수익
대변

차변 == 대변


#####################################################
# 제 3절 회계상 거래 판별
#####################################################

사건1 <- "떡볶이 판매"
사건2 <- "손님오기 전에 신문보기"
사건3 <- "동생 일당 주기"
사건 <- c("떡볶이 판매", "손님오기 전에 신문보기", "동생 일당 주기")
사건_판단 = c(TRUE, FALSE, TRUE)
사건[사건_판단]
경제적사건 <- 사건[사건_판단]
경제적사건

a <- c(10, 20, 40, 80)
a
b <- c(TRUE, FALSE, TRUE)
b


사건[1]
사건[c(1,2)]


#####################################################
# 제 4절 거래분석
#####################################################

차변 <- c(0,0)
names(차변) <- c('자산','비용')

현금 <- 15000
차변["자산"] <- 현금
차변
대변 <- rep(0,3)
대변
대변 <- rep(0,3)
대변
names(대변) <- c('부채', '자본', '수익') 

자본금 <- 15000
대변['자본'] <- 자본금
대변
sum(차변)
sum(대변)
sum(대변) == sum(차변)

#####################################################
# 제5절 분개
#####################################################
계정코드 <- c(101,102,103,104,105,106,107,108,109,110,111,112,113)
계정코드 <- 101:113

계정과목명 <- c('현금', '매출채권', '상품', '차량운반구',
		'기계', '매입채무', '미지급금', '장기차입금',
		'자본금', '매출', '매출원가', '급여', '임차료')
계정분류 <- c(rep('자산', 5), rep('부채', 3), '자본', '수익', rep('비용',3))

계정과목표 <- data.frame(계정코드, 계정과목명, 계정분류)
계정과목표
계정과목표$계정코드
계정과목표[3, ]
계정과목표[3, 1:2]

일자 <- rep('1월1일', 2)
계정과목명 <- c('현금', '자본금')
계정코드 <- c(101, 109)
금액 <- c(100000000, 100000000)
위치 <- c('차변', '대변')
분개기록 <- data.frame(일자, 계정코드, 계정과목명, 금액, 위치)
분개장 <- 분개기록

match(c('현금', '자본금'), 계정과목표$계정과목명)
계정과목표$계정코드[c(1,9)]
계정과목표$계정코드[ match(c('현금', '자본금'), 계정과목표$계정과목명) ]

일자 <- rep('1월1일', 2)
계정과목명 <- c('현금', '자본금')
계정코드 <- 계정과목표$계정코드[ match(계정과목명, 계정과목표$계정과목명) ]
금액 <- c(100000000, 100000000)
위치 <- c('차변', '대변')
분개기록 <- data.frame(일자, 계정코드, 계정과목명, 금액, 위치)
분개장 <- 분개기록

일자 <- rep('1월2일', 2)
계정과목명 <- c('임차료', '현금')
계정코드 <- 계정과목표$계정코드[ match(계정과목명, 계정과목표$계정과목명) ]
금액 <- c(1000000, 1000000)
위치 <- c('차변', '대변')
분개기록 <- data.frame(일자, 계정코드, 계정과목명, 금액, 위치) 
분개장 <- rbind(분개장, 분개기록)

일자 <- rep('1월3일', 2)
계정과목명 <- c('차량운반구', '현금')
계정코드 <- 계정과목표$계정코드[ match(계정과목명, 계정과목표$계정과목명) ]
금액 <- c(1500000, 1500000)
위치 <- c('차변', '대변')
분개기록 <- data.frame(일자, 계정코드, 계정과목명, 금액, 위치) 
분개장 <- rbind(분개장, 분개기록)

일자 <- rep('1월4일', 2)
계정과목명 <- c('급여', '현금')
계정코드 <- 계정과목표$계정코드[ match(계정과목명, 계정과목표$계정과목명) ]
금액 <- c(700000, 700000)
위치 <- c('차변', '대변')
분개기록 <- data.frame(일자, 계정코드, 계정과목명, 금액, 위치) 
분개장 <- rbind(분개장, 분개기록)

일자 <- rep('1월5일', 2)
계정과목명 <- c('기계', '미지급금')
계정코드 <- 계정과목표$계정코드[ match(계정과목명, 계정과목표$계정과목명) ]
금액 <- c(5000000, 5000000)
위치 <- c('차변', '대변')
분개기록 <- data.frame(일자, 계정코드, 계정과목명, 금액, 위치) 
분개장 <- rbind(분개장, 분개기록)

일자 <- rep('1월6일', 2)
계정과목명 <- c('매출채권', '매출')
계정코드 <- 계정과목표$계정코드[ match(계정과목명, 계정과목표$계정과목명) ]
금액 <- c(4000000, 4000000)
위치 <- c('차변', '대변')
분개기록 <- data.frame(일자, 계정코드, 계정과목명, 금액, 위치) 
분개장 <- rbind(분개장, 분개기록)

일자 <- rep('1월7일', 2)
계정과목명 <- c('현금', '장기차입금')
계정코드 <- 계정과목표$계정코드[ match(계정과목명, 계정과목표$계정과목명) ]
금액 <- c(40000000, 40000000)
위치 <- c('차변', '대변')
분개기록 <- data.frame(일자, 계정코드, 계정과목명, 금액, 위치) 
분개장 <- rbind(분개장, 분개기록)



분개장$계정과목명 == '현금'
분개장[분개장$계정과목명 == '현금', ]

각분개 <- 분개장[분개장$계정과목명 == '현금', ]

각분개$금액
각분개$위치 == ‘대변’
각분개$금액[ 각분개$위치=='대변']
sum(각분개$금액[ 각분개$위치=='대변'])


#####################################################
# 6번 문제
#####################################################

자산 <- 425000
names(자산) <- '통화'
자산[2]

자산[2] <- 10000
names(자산)[2] <- '우표'
자산[3] <- 100000
names(자산)[3] <- '타인발행당좌수표'
자산[4] <- 40000
names(자산)[4] <- '기일이경과한이자표'
자산[5] <- 20000
names(자산)[5] <- '배당금통지지급표'
자산[6] <- 120000
names(자산)[6] <- '선일자수표'

자산[7] <- 3000
names(자산)[7] <- '우편환증서'
자산[8] <- 500000
names(자산)[8] <- '직원에대한가불증'
자산[9] <- 4000000
names(자산)[9] <- '양도성예금증서_취득당시만기4개월'
자산

자산기록 <- c(T, F, rep(T,3), F, T, rep(F,2))
sum(자산[자산기록])


#####################################################
# 제 7절 매입할인
#####################################################

일자 <- rep( '2016-5-1', 2)
class(일자)
일자 <- as.Date(일자)
class(일자)

일자 <- rep( '2016-5-1', 2)
일자 <- as.Date(일자)
계정과목명 <- c('매입', '매입채무')
금액 <- rep(2000, 2)
위치 <- c('차변', '대변')  
분개기록1<- data.frame(일자,계정과목명, 금액, 위치)
분개장1 <- 분개기록1

일자 <- rep( '2016-5-1', 3)
일자 <- as.Date(일자)
계정과목명 <- c('매입', '매입채무', '매입할인(매입)')
금액 <- c(2000, 1960, 40)
위치 <- c('차변', '대변', '대변')  
분개기록2<- data.frame(일자,계정과목명, 금액, 위치)
분개장2 <- 분개기록2

지급일자 <- as.Date('2016-05-09')
if (지급일자 - 일자[1] < 10) print(분개장2) else print(분개장1)

#####################################################
# 제 8절 매출원가
#####################################################

기초재고액 <- 30
당기매입액 <- 70
기말재고액 <- 40
매출원가액 <- 기초재고액 + 당기매입액 - 기말재고액
매출원가액

매출원가계산함수<- function(기초재고액, 당기매입액, 기말재고액)
{
  매출원가액 <- 기초재고액 + 당기매입액 - 기말재고액
  return(매출원가액)
}

매출원가계산함수(기초재고액 = 30, 당기매입액 = 70, 기말재고액 = 40)


#####################################################
# 제 9절 재고자산 단위원가결정방법: 선입선출법
#####################################################

입고 <- data.frame(일자 = as.Date(c('2016-03-01','2016-03-09', '2016-03-24')),
                   적요 = c('전월이월', '매입', '매입'),
                   수량 = c(5, 15, 20), 
                   단가 = c(20000,18000,22000))
출고 <- data.frame(일자 = as.Date(c('2016-03-16','2016-03-29')),
                   적요 = c('매출', '매출'),
                   수량 = c(10, 12), 
                   단가 = c(NA,NA))

입출고 <- rbind(입고, 출고)
sort.fit <-sort.int(입출고$일자, index.return = TRUE)
sort.fit$ix
입출고 <-입출고[c(1,2,4,3,5),]
임시 <- data.frame(수량 = 5, 단가 = 20000)
재고 <- 임시
임시 <- data.frame(수량 = 15, 단가 =18000)
재고 <- rbind(재고, 임시)
판매수량 <- 10
cumsum(재고$수량)
cumsum(재고$수량)>=판매수량
which(cumsum(재고$수량)>=판매수량
min( which(cumsum(재고$수량)>=판매수량))
누적수량 <- cumsum(재고$수량)
잔여물품위치<-min( which(누적수량>=판매수량))
재고 <- 재고[잔여물품위치:nrow(재고), ]
재고$수량[1] <-  누적수량[잔여물품위치]-판매수량

임시 <-  data.frame(수량 = 20, 단가 = 22000)
재고 <- rbind(재고, 임시)

판매수량 <- 12
누적수량 <- cumsum(재고$수량)
잔여물품위치<-min( which(누적수량>=판매수량))
재고 <- 재고[잔여물품위치:nrow(재고), ]
재고$수량[1] <-  누적수량[잔여물품위치]-판매수량
재고

기말재고액 <- sum(재고$수량*재고$단가)
기말재고액

기초재고액 <- 입고$수량[1]*입고$단가[1]
당기매입액 <- sum(입고$수량[-1]*입고$단가[-1])
판매재고자산원가 <- 기초재고액 + 당기매입액 - 기말재고액
판매재고자산원가

#####################################################
# 제 10절 재고자산 단위원가결정방법: 총평균법
#####################################################



평균단가 <- sum(입고$단가 * 입고$수량)/ sum(입고$수량)
평균단가



#####################################################
# 제 11절 재고자산 단위원가결정방법: 이동평균법
#####################################################

위치 <- 1
재고 <- data.frame(수량 = 입출고$수량[위치], 단가 = 입출고$단가[위치])
위치 <- 2
금액 <-  (재고$단가*재고$수량) + (입출고$수량[위치]* 입출고$단가[위치]) 
수량 <- 재고$수량 + 입출고$수량[위치]
재고$수량 <- 수량
재고$단가 <- 금액/수량
위치 <- 3
재고$수량 <- 재고$수량 - 입출고$수량[위치]
위치 <- 4
금액 <-  (재고$단가*재고$수량) + (입출고$수량[위치]* 입출고$단가[위치]) 
수량 <- 재고$수량 + 입출고$수량[위치]
재고$수량 <- 수량
재고$단가 <- 금액/수량
위치 <- 5
재고$수량 <- 재고$수량-입출고$수량[위치]
재고


for ( i in 1:5)
{
위치 <- i
  if (입출고$적요[i] == '전월이월') 
   {
      재고 <- data.frame(수량 = 입출고$수량[위치], 단가 = 입출고$단가[위치])
   } 
  if (입출고$적요[i] == '매입') 
   {
      금액 <-  (재고$단가*재고$수량) + (입출고$수량[위치]* 입출고$단가[위치]) 
      수량 <- 재고$수량 + 입출고$수량[위치]
      재고$수량 <- 수량
      재고$단가 <- 금액/수량
   }
   if (입출고$적요[i] == '매출')
   {
      재고$수량 <- 재고$수량 - 입출고$수량[위치]
   }
}

#####################################################
# 제 12절 매출채권의 대손
#####################################################
대손정보 <- data.frame(연채기간 = c('2<', '2>=&3<', '3>=&6<', '6>='),
			   매출채권잔액 = c(75000, 10000, 5000, 500),
                     과거대손율  = c(0, 0.04, 0.10, 0.25))
대손액 <- sum( 대손정보$매출채권잔액 * 대손정보$과거대손율)

항목정보 <- data.frame( 	구분 = c('지금금액','부가세', '운임', '수입관세',
					'설치비용','복구비용','유지비용'),
				금액 = c(100000,10000,2000,5000,1000,3000,1500)
			  )



#####################################################
# 제 13절 유형자산 원가에 포함되는 항목
#####################################################


계상구분 <- c('지금금액', '운임', '수입관세', '설치비용','복구비용')

sum(항목정보$금액[항목정보$구분  %in% 계상구분])




#####################################################
# 제 14절 감가상각
#####################################################

취득원가 <- 100000
잔존가치 <- 취득원가 * 0.05
내용연수 <- 4
감가상각비 <- rep( (취득원가-잔존가치)/내용연수, 4)
장부가액 <- 취득원가-cumsum(감가상각비)
장부가액

#####################################################
# 제 15절 금융자산의 공정가치 측정
#####################################################

액면금액 <- 400000
발행금액 <- 380000
유효이자율 <- 0.075
액면이자율 <- 0.06
기초 <- 발행금액
유효이자 <- 기초*유효이자율
액면이자 <- 액면금액*액면이자율
상각 <- 유효이자 - 액면이자
기말 <- 발행금액 + 상각
임시 <- data.frame (기초, 유효이자, 액면이자, 상각, 기말)
사채상각표 <- 임시

# 2
기초 <- 기말
유효이자 <- 기초*유효이자율
액면이자 <- 액면금액*액면이자율
상각 <- 유효이자 - 액면이자
기말 <- 기초 + 상각
임시 <- data.frame (기초, 유효이자, 액면이자, 상각, 기말)
사채상각표 <- rbind(사채상각표, 임시)
사채상각표

# 3
기초 <- 기말
유효이자 <- 기초*유효이자율
액면이자 <- 액면금액*액면이자율
상각 <- 유효이자 - 액면이자
기말 <- 기초 + 상각
임시 <- data.frame (기초, 유효이자, 액면이자, 상각, 기말)
사채상각표 <- rbind(사채상각표, 임시)
사채상각표

# 4
기초 <- 기말
유효이자 <- 기초*유효이자율
액면이자 <- 액면금액*액면이자율
상각 <- 유효이자 - 액면이자
기말 <- 기초 + 상각
임시 <- data.frame (기초, 유효이자, 액면이자, 상각, 기말)
사채상각표 <- rbind(사채상각표, 임시)
사채상각표

#####################################################
# 제 16절 사채 발행
#####################################################

유효이자율 <- 0.12
기간 <- 3
원금현가계수 <- 1/ (1+유효이자율)^기간

원금 <- 100000
원금현재가치 <- 원금*원금현가계수
원금현재가치

복리 <- (1+유효이자율)^(1:3)
복리

연금현가계수<- sum(1/복리)

표시이자율 <- 0.10
이자현재가치 <- 원금*표시이자율*연금현가계수
발행금액 <- 원금현재가치 + 이자현재가치


#####################################################
# 제 16절 사채 발행: 할증발행
#####################################################

유효이자율 <- 0.08
액면가액 <- 100000
기간 <- 3
표시이자율 <- 0.1
원금현가계수 <- round(1/ (1+유효이자율)^기간, 4)
원금현재가치 <- 액면가액*원금현가계수
복리 <- (1+유효이자율)^(1:기간)
연금현가계수<- round(sum(1/복리),4)
이자현재가치 <- 원금*표시이자율*연금현가계수
사채발행금액 <- 원금현재가치 + 이자현재가치
사채발행금액


상각표 <- NULL
기초 <- 사채발행금액
for ( i in 1:기간)
{
   유효이자 <- round(기초*유효이자율)
   액면이자 <-액면가액*표시이자율
   사채발행차금상각 <- 액면이자 - 유효이자
   기말 <- 기초 - 사채발행차금상각
   임시 <- data.frame(  기초 = 기초,
   		        유효이자 = 유효이자,
			액면이자 = 액면이자,
			사채발행차금상각 = 사채발행차금상각,
			기말 = 기말)

   상각표 <- rbind(상각표, 임시)
   기초 <- 기말
}

