//
//  main.c
//  C
//
//  Created by Müslüm Barýþ Korkmazer (04.07.2022)
//

#include <stdio.h>
#include <locale.h>
#include <string.h>

int main()
{
    setlocale(LC_ALL, "Turkish");
    FILE *sozler = NULL;
    sozler = fopen("sozler.windows.1254.txt", "r");
    
    char sentence[50] = "";

    if (sozler == NULL)
    {
        printf("Error! Can't find file!\n");
        return 1;
    }

    while (fgets(sentence, sizeof(sozler), sozler))
    {
        printf("%s", sentence);
        memset(sentence, 0, sizeof sentence);
    }

    fclose(sozler);

    return 0;
}
