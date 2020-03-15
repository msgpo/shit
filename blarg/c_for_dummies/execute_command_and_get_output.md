## execute a system command and get its output

```
#include <stdio.h>
int main()
{
    char buf[64];
    FILE *fp = popen("uname -a", "r");
    fgets(buf, 64, fp);
    printf("%s", buf);
    pclose(fp);
    return 0;
}
```
