@echo off

:: this file MUST BE in cp866
:: encoding for title MUST BE cp1251

perl "../git-md-toc" --title-transcode=cp1251 -ut "[Сказки Пушкина]" -Tutf8 "utf8-cyrillic.md"
