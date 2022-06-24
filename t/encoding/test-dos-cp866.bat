@echo off

:: this file MUST BE in cp866
:: encoding for title MUST BE cp1251

perl "../../git-md-toc" -T utf8,cp1251 -ut "[Сказки Пушкина]" < "utf8-cyrillic.md"
