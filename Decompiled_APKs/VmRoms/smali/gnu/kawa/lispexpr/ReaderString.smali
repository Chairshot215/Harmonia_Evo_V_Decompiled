.class public Lgnu/kawa/lispexpr/ReaderString;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderString.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static readString(Lgnu/text/Lexer;II)Ljava/lang/String;
    .locals 11
    .parameter "in"
    .parameter "ch"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    .line 25
    iget v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 26
    .local v5, startPos:I
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v2

    .line 27
    .local v2, port:Lgnu/text/LineBufferedReader;
    const/4 v4, 0x0

    .line 28
    .local v4, saveReadState:C
    move v1, p1

    .line 30
    .local v1, c:I
    instance-of v7, v2, Lgnu/mapping/InPort;

    if-eqz v7, :cond_0

    .line 32
    move-object v0, v2

    check-cast v0, Lgnu/mapping/InPort;

    move-object v7, v0

    iget-char v4, v7, Lgnu/mapping/InPort;->readState:C

    .line 33
    move-object v0, v2

    check-cast v0, Lgnu/mapping/InPort;

    move-object v7, v0

    int-to-char v8, p1

    iput-char v8, v7, Lgnu/mapping/InPort;->readState:C

    .line 39
    :cond_0
    :goto_0
    move v3, v1

    .line 42
    .local v3, prev:I
    const/16 v7, 0xd

    if-ne v3, v7, :cond_2

    .line 44
    :try_start_0
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    .line 45
    if-eq v1, v10, :cond_0

    .line 52
    :goto_1
    if-ne v1, p1, :cond_4

    .line 89
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v9, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v9, v5

    invoke-direct {v7, v8, v5, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 98
    iput v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 99
    instance-of v8, v2, Lgnu/mapping/InPort;

    if-eqz v8, :cond_1

    .line 100
    check-cast v2, Lgnu/mapping/InPort;

    .end local v2           #port:Lgnu/text/LineBufferedReader;
    iput-char v4, v2, Lgnu/mapping/InPort;->readState:C

    :cond_1
    return-object v7

    .line 48
    .restart local v2       #port:Lgnu/text/LineBufferedReader;
    :cond_2
    :try_start_1
    iget v7, v2, Lgnu/text/LineBufferedReader;->pos:I

    iget v8, v2, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v7, v8, :cond_3

    if-eq v3, v10, :cond_3

    .line 49
    iget-object v7, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v8, v2, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v2, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v1, v7, v8

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    goto :goto_1

    .line 56
    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 82
    :cond_5
    if-gez v1, :cond_6

    .line 83
    const-string v7, "unexpected EOF in string literal"

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 84
    :cond_6
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v7

    iput v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 99
    instance-of v8, v2, Lgnu/mapping/InPort;

    if-eqz v8, :cond_7

    .line 100
    check-cast v2, Lgnu/mapping/InPort;

    .end local v2           #port:Lgnu/text/LineBufferedReader;
    iput-char v4, v2, Lgnu/mapping/InPort;->readState:C

    :cond_7
    throw v7

    .line 60
    .restart local v2       #port:Lgnu/text/LineBufferedReader;
    :sswitch_0
    :try_start_2
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 61
    const/16 v6, 0xa

    .line 68
    .local v6, t:I
    :goto_2
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_0

    .line 64
    .end local v6           #t:I
    :cond_8
    const/16 v6, 0xd

    .line 66
    .restart local v6       #t:I
    const/16 v1, 0x20

    goto :goto_2

    .line 71
    .end local v6           #t:I
    :sswitch_1
    instance-of v7, p0, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v7, :cond_9

    .line 72
    move-object v0, p0

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v1

    .line 75
    :goto_3
    const/4 v7, -0x2

    if-ne v1, v7, :cond_5

    .line 77
    const/16 v1, 0xa

    .line 78
    goto :goto_0

    .line 74
    :cond_9
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_3

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .parameter "ch"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-static {p1, p2, p3}, Lgnu/kawa/lispexpr/ReaderString;->readString(Lgnu/text/Lexer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
