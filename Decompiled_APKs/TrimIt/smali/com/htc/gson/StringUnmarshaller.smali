.class final Lcom/htc/gson/StringUnmarshaller;
.super Ljava/lang/Object;
.source "StringUnmarshaller.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCodePoint(Ljava/lang/String;I)I
    .locals 3
    .parameter "str"
    .parameter "i"

    .prologue
    .line 36
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, s:Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, codePoint:I
    return v0
.end method

.method private static getEscapedChar(Ljava/lang/String;C)C
    .locals 4
    .parameter "str"
    .parameter "c"

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :sswitch_0
    const/16 v0, 0xa

    .line 74
    .local v0, ch:C
    :goto_0
    return v0

    .line 48
    .end local v0           #ch:C
    :sswitch_1
    const/16 v0, 0x8

    .line 49
    .restart local v0       #ch:C
    goto :goto_0

    .line 51
    .end local v0           #ch:C
    :sswitch_2
    const/16 v0, 0xc

    .line 52
    .restart local v0       #ch:C
    goto :goto_0

    .line 54
    .end local v0           #ch:C
    :sswitch_3
    const/16 v0, 0x9

    .line 55
    .restart local v0       #ch:C
    goto :goto_0

    .line 57
    .end local v0           #ch:C
    :sswitch_4
    const/16 v0, 0xd

    .line 58
    .restart local v0       #ch:C
    goto :goto_0

    .line 60
    .end local v0           #ch:C
    :sswitch_5
    const/16 v0, 0x22

    .line 61
    .restart local v0       #ch:C
    goto :goto_0

    .line 63
    .end local v0           #ch:C
    :sswitch_6
    const/16 v0, 0x27

    .line 64
    .restart local v0       #ch:C
    goto :goto_0

    .line 66
    .end local v0           #ch:C
    :sswitch_7
    const/16 v0, 0x5c

    .line 67
    .restart local v0       #ch:C
    goto :goto_0

    .line 69
    .end local v0           #ch:C
    :sswitch_8
    const/16 v0, 0x2f

    .line 70
    .restart local v0       #ch:C
    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x27 -> :sswitch_6
        0x2f -> :sswitch_8
        0x5c -> :sswitch_7
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_0
        0x72 -> :sswitch_4
        0x74 -> :sswitch_3
    .end sparse-switch
.end method

.method static unmarshall(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "str"

    .prologue
    .line 7
    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 10
    .local v5, len:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 12
    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 14
    .local v0, c:C
    add-int/lit8 v4, v4, 0x1

    .line 15
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_1

    .line 16
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 17
    .local v1, c1:C
    add-int/lit8 v4, v4, 0x1

    .line 18
    const/16 v7, 0x75

    if-ne v1, v7, :cond_0

    .line 20
    invoke-static {p0, v4}, Lcom/htc/gson/StringUnmarshaller;->getCodePoint(Ljava/lang/String;I)I

    move-result v2

    .line 21
    .local v2, codePoint:I
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 22
    add-int/lit8 v4, v4, 0x4

    .line 23
    goto :goto_0

    .line 24
    .end local v2           #codePoint:I
    :cond_0
    invoke-static {p0, v1}, Lcom/htc/gson/StringUnmarshaller;->getEscapedChar(Ljava/lang/String;C)C

    move-result v3

    .line 25
    .local v3, escapedChar:C
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 28
    .end local v1           #c1:C
    .end local v3           #escapedChar:C
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 31
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
