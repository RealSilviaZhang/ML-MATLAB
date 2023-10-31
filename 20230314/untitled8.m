fp = fopen('tt.m','w'); 
fprintf(fp, '%d\n', 2021320050); 
fprintf(fp, '%d %d %d\n', 2023, 3, 14); 
fprintf(fp, '%3.2f\n', 3.14);
fclose(fp);