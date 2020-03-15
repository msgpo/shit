# Cool thing to get frequency of command history
-------------------------------------------
```
frequency() {
    cut -f1 -d " " ."$(basename $SHELL)"_history | sort | uniq -c | sort -nr | head -n 30
}
```
