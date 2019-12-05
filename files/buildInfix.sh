mkdir -p out
bison --defines=out/expr.tab.h --output=out/expr.c  \
   --report='all' --report-file=out/report.txt files/expr.y
flex --outfile=out/lex.c files/expr.l
gcc out/expr.c out/lex.c -o out/calc -lm
echo "Run with: ./out/calc"
