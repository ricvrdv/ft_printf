# 42 - FT_PRINTF

### SUMMARY
The goal of this project was to recode the original libc function `printf()`.
This custom function had to handle the following conversions: 
| specifier | description                                                         |
| --------- | ------------------------------------------------------------------- |
| c         | prints a single character                                           |
| s         | prints a string                                                     |
| p         | the void * pointer argument has to be printed in hexadecimal format |
| d         | prints a decimal (base 10) number                                   |
| i         | prints an integer in base 10                                        |
| u         | prints an unsigned decimal (base 10) number                         |
| x         | prints a number in hexadecimal (base 16) lowercase format           |
| X         | prints a number in hexadecimal (base 16) uppercase format           |
| %         | prints a percent sign                                               |

----
🐸 Feel free to fork, clone, or contact me for questions or feedback. 
