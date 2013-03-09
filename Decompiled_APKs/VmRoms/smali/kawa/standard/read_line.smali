.class public Lkawa/standard/read_line;
.super Ljava/lang/Object;
.source "read_line.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lgnu/text/LineBufferedReader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "in"
    .parameter "handling"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    .line 12
    .local v1, ch:I
    if-gez v1, :cond_0

    .line 13
    sget-object p0, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    .end local p0
    move-object p1, p0

    move p0, v1

    .line 86
    .end local v1           #ch:I
    .end local p1
    .local p0, ch:I
    :goto_0
    return-object p1

    .line 14
    .restart local v1       #ch:I
    .local p0, in:Lgnu/text/LineBufferedReader;
    .restart local p1
    :cond_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v2, 0x1

    sub-int v6, v0, v2

    .line 15
    .local v6, start:I
    move v4, v6

    .line 16
    .local v4, pos:I
    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 17
    .local v3, limit:I
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 18
    .local v0, buffer:[C
    const/4 v2, -0x1

    .local v2, delim:I
    move v5, v4

    .line 21
    .end local v4           #pos:I
    .local v5, pos:I
    :goto_1
    if-ge v5, v3, :cond_13

    .line 23
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    aget-char v1, v0, v5

    .line 24
    const/16 v5, 0xd

    if-eq v1, v5, :cond_1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_12

    .line 26
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 27
    const-string v5, "trim"

    if-eq p1, v5, :cond_2

    const-string v5, "peek"

    if-ne p1, v5, :cond_6

    .line 29
    :cond_2
    const-string v5, "peek"

    if-ne p1, v5, :cond_3

    .line 30
    const/4 v2, 0x0

    .line 31
    :cond_3
    const/16 v5, 0xa

    if-ne v1, v5, :cond_4

    .line 32
    const/4 p1, 0x1

    .line 37
    .end local v2           #delim:I
    .local p1, delim:I
    :goto_2
    add-int v2, v4, p1

    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    move p0, p1

    .end local p1           #delim:I
    .local p0, delim:I
    move p1, v4

    .line 45
    .end local v3           #limit:I
    .end local v4           #pos:I
    .local p1, pos:I
    :goto_3
    new-instance p0, Lgnu/lists/FString;

    .end local p0           #delim:I
    sub-int/2addr p1, v6

    invoke-direct {p0, v0, v6, p1}, Lgnu/lists/FString;-><init>([CII)V

    .end local p1           #pos:I
    move-object p1, p0

    move p0, v1

    .end local v1           #ch:I
    .local p0, ch:I
    goto :goto_0

    .line 33
    .restart local v1       #ch:I
    .restart local v2       #delim:I
    .restart local v3       #limit:I
    .restart local v4       #pos:I
    .local p0, in:Lgnu/text/LineBufferedReader;
    .local p1, handling:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v3, :cond_7

    .line 34
    add-int/lit8 p1, v4, 0x1

    aget-char p1, v0, p1

    .end local p1           #handling:Ljava/lang/String;
    const/16 v2, 0xa

    if-ne p1, v2, :cond_5

    .end local v2           #delim:I
    const/4 p1, 0x2

    .local p1, delim:I
    :goto_4
    goto :goto_2

    .end local p1           #delim:I
    :cond_5
    const/4 p1, 0x1

    goto :goto_4

    .line 39
    .restart local v2       #delim:I
    .local p1, handling:Ljava/lang/String;
    :cond_6
    const-string v3, "concat"

    .end local v3           #limit:I
    if-ne p1, v3, :cond_7

    const/16 v3, 0xa

    if-ne v1, v3, :cond_7

    .line 41
    add-int/lit8 p1, v4, 0x1

    .end local v4           #pos:I
    .local p1, pos:I
    iput p1, p0, Lgnu/text/LineBufferedReader;->pos:I

    move p0, v2

    .end local v2           #delim:I
    .local p0, delim:I
    goto :goto_3

    .restart local v2       #delim:I
    .restart local v4       #pos:I
    .local p0, in:Lgnu/text/LineBufferedReader;
    .local p1, handling:Ljava/lang/String;
    :cond_7
    move v3, v4

    .line 51
    .end local v4           #pos:I
    .local v3, pos:I
    :goto_5
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 52
    .local v4, sbuf:Ljava/lang/StringBuffer;
    if-le v3, v6, :cond_8

    .line 53
    sub-int v5, v3, v6

    invoke-virtual {v4, v0, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 54
    :cond_8
    iput v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 55
    const-string v0, "peek"

    .end local v0           #buffer:[C
    if-ne p1, v0, :cond_9

    const/16 v0, 0x50

    .line 58
    .local v0, mode:C
    :goto_6
    invoke-virtual {p0, v4, v0}, Lgnu/text/LineBufferedReader;->readLine(Ljava/lang/StringBuffer;C)V

    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 60
    .local v0, length:I
    const-string p0, "split"

    .end local p0           #in:Lgnu/text/LineBufferedReader;
    if-ne p1, p0, :cond_11

    .line 62
    if-nez v0, :cond_c

    .line 63
    const/4 p0, 0x0

    .end local v2           #delim:I
    .local p0, delim:I
    move v2, v0

    .end local v0           #length:I
    .local v2, length:I
    move v0, p0

    .line 78
    .end local p0           #delim:I
    .local v0, delim:I
    :goto_7
    new-instance p0, Lgnu/lists/FString;

    const/4 v3, 0x0

    invoke-direct {p0, v4, v3, v2}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    .line 79
    .end local v3           #pos:I
    .local p0, dataStr:Lgnu/lists/FString;
    const-string v3, "split"

    if-ne p1, v3, :cond_10

    .line 81
    new-instance p1, Lgnu/lists/FString;

    .end local p1           #handling:Ljava/lang/String;
    sub-int/2addr v2, v0

    invoke-direct {p1, v4, v2, v0}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    .line 82
    .end local v2           #length:I
    .local p1, delimStr:Lgnu/lists/FString;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #delim:I
    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 83
    .end local p0           #dataStr:Lgnu/lists/FString;
    .local v0, values:[Ljava/lang/Object;
    new-instance p0, Lgnu/mapping/Values;

    invoke-direct {p0, v0}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    move-object p1, p0

    move p0, v1

    .end local v1           #ch:I
    .local p0, ch:I
    goto/16 :goto_0

    .line 55
    .end local v0           #values:[Ljava/lang/Object;
    .restart local v1       #ch:I
    .local v2, delim:I
    .restart local v3       #pos:I
    .local p0, in:Lgnu/text/LineBufferedReader;
    .local p1, handling:Ljava/lang/String;
    :cond_9
    const-string v0, "concat"

    if-eq p1, v0, :cond_a

    const-string v0, "split"

    if-ne p1, v0, :cond_b

    :cond_a
    const/16 v0, 0x41

    goto :goto_6

    :cond_b
    const/16 v0, 0x49

    goto :goto_6

    .line 66
    .end local p0           #in:Lgnu/text/LineBufferedReader;
    .local v0, length:I
    :cond_c
    const/4 p0, 0x1

    sub-int p0, v0, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    .line 67
    .local p0, last:C
    const/16 v2, 0xd

    if-ne p0, v2, :cond_d

    .line 68
    .end local v2           #delim:I
    const/4 p0, 0x1

    .line 75
    .local p0, delim:I
    :goto_8
    sub-int/2addr v0, p0

    move v2, v0

    .end local v0           #length:I
    .local v2, length:I
    move v0, p0

    .end local p0           #delim:I
    .local v0, delim:I
    goto :goto_7

    .line 69
    .end local v2           #length:I
    .local v0, length:I
    .local p0, last:C
    :cond_d
    const/16 v2, 0xa

    if-eq p0, v2, :cond_e

    .line 70
    const/4 p0, 0x0

    .local p0, delim:I
    goto :goto_8

    .line 71
    .local p0, last:C
    :cond_e
    const/4 v2, 0x2

    if-le p0, v2, :cond_f

    const/4 p0, 0x2

    sub-int p0, v0, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    .end local p0           #last:C
    move-result p0

    const/16 v2, 0xd

    if-ne p0, v2, :cond_f

    .line 72
    const/4 p0, 0x2

    .local p0, delim:I
    goto :goto_8

    .line 74
    .end local p0           #delim:I
    :cond_f
    const/4 p0, 0x1

    .restart local p0       #delim:I
    goto :goto_8

    .end local v3           #pos:I
    .local v0, delim:I
    .restart local v2       #length:I
    .local p0, dataStr:Lgnu/lists/FString;
    :cond_10
    move-object p1, p0

    move p0, v1

    .line 86
    .end local v1           #ch:I
    .local p0, ch:I
    goto/16 :goto_0

    .end local p0           #ch:I
    .local v0, length:I
    .restart local v1       #ch:I
    .local v2, delim:I
    .restart local v3       #pos:I
    :cond_11
    move v7, v0

    .end local v0           #length:I
    .local v7, length:I
    move v0, v2

    .end local v2           #delim:I
    .local v0, delim:I
    move v2, v7

    .end local v7           #length:I
    .local v2, length:I
    goto :goto_7

    .local v0, buffer:[C
    .local v2, delim:I
    .local v3, limit:I
    .local v4, pos:I
    .local p0, in:Lgnu/text/LineBufferedReader;
    :cond_12
    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto/16 :goto_1

    :cond_13
    move v3, v5

    .end local v5           #pos:I
    .local v3, pos:I
    goto/16 :goto_5
.end method
