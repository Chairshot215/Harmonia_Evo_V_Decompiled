.class final Lcom/htc/gson/StringUnmarshaller;
.super Ljava/lang/Object;
.source "StringUnmarshaller.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCodePoint(Ljava/lang/String;I)I
    .locals 3

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getEscapedChar(Ljava/lang/String;C)C
    .locals 4

    sparse-switch p1, :sswitch_data_0

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

    :sswitch_0
    const/16 v0, 0xa

    :goto_0
    return v0

    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x22

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x27

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x5c

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x2f

    goto :goto_0

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

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x5c

    if-ne v0, v7, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x75

    if-ne v1, v7, :cond_0

    invoke-static {p0, v4}, Lcom/htc/gson/StringUnmarshaller;->getCodePoint(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lcom/htc/gson/StringUnmarshaller;->getEscapedChar(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
