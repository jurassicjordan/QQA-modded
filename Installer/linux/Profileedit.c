//edit the existing launcher_profiles.json
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#define FIMENAME_SIZE 1024
#define MAX_LINE 2048





int main()
{
    FILE *file, *temp;

    char filename[FILEMANE_SIZE];
    char temp_filename[FILENAME_SIZE];
    char buffer[MAX_LINE];
    char replace [MAX_LINE];
    int replace_line = 0;

    printf("File: ");
    scanf("%s", filename);
    
    strcpy(temp_filename, "temp____");
    strcat(temp_filename, filename);

    printf("Replace line number: ");
    scanf("%d", &replace_line);

    fflush(stdin);

    printf("NewLine: ");
    fgets(replace, MAX_LINE, stdin);
    
    file = fopen(filename, "r");
    temp = fopen(temo_filename, "w");

    return 0;
}







/*int main()
{
    FILE *fp;
    char ch;
    //ch = 'A';
    fp = fopen("launcher_profiles.json","a");
    fprintf(fp, "{\n");
    fprintf(fp, "  \"profiles\" : {\n");
    fprintf(fp, "\n\"QQA-Modded\" : {\n");
    fprintf(fp, "  \"gameDir\" : \"QQA MODDED DIRECTORY\",\n");
    fprintf(fp, "  \"icon\" : \"Cake\",\n");
    fprintf(fp, "  \"javaArgs\" : \"-Xmx8G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M\",\n");
    fprintf(fp, "  \"lastVersionId\" : \"1.12.2-forge-14.23.5.2860\",\n");
    fprintf(fp, "  \"name\" : \"QQA-Modded\",\n");
    fprintf(fp, "  \"type\" : \"custom\"\n");
    fprintf(fp, "},\n");

    //fputc(ch, fp);

    printf("no idea if this worked");

    fclose(fp);

    return 0;
}*/
