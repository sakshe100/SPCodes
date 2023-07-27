ChessBoard(){
	local r=32
	local c=32
	bsquare="\e[47m \e[0m"
	wsquare="\e[40m \e[0m"
	
	for((i=1;i<=r;i++)); do
		for((j=1;j<=c;j++)); do
			if (( (i + j) % 2 == 0)); then
				printf "$bsquare"
			else
				printf "$wsquare"
			fi
		done
		printf "\n"
	done
}
ChessBoard
