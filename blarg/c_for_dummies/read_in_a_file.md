## Read in a file

```
#include <stdio.h>
int main()
{
   FILE *fp;
   fp = fopen("/etc/fstab", "r");
    if (fp) {
        char buff[255];
        fgets(buff, 255, (FILE*)fp);
        printf("%s", buff);
        fclose(fp);
    }
    return 0;
}
```
