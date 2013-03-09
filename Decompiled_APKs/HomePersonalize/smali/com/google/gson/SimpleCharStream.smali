.class final Lcom/google/gson/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# static fields
.field public static final staticFlag:Z


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 346
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/google/gson/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 347
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 334
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/gson/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 335
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    .line 320
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/gson/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 321
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 340
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 341
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 327
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 328
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 313
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/google/gson/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 314
    return-void

    .line 313
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 274
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/google/gson/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 275
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 268
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/gson/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    .line 22
    iput v1, p0, Lcom/google/gson/SimpleCharStream;->column:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->line:I

    .line 25
    iput-boolean v1, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsCR:Z

    .line 26
    iput-boolean v1, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsLF:Z

    .line 31
    iput v1, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I

    .line 32
    iput v1, p0, Lcom/google/gson/SimpleCharStream;->inBuf:I

    .line 33
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->tabSize:I

    .line 254
    iput-object p1, p0, Lcom/google/gson/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 255
    iput p2, p0, Lcom/google/gson/SimpleCharStream;->line:I

    .line 256
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->column:I

    .line 258
    iput p4, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iput p4, p0, Lcom/google/gson/SimpleCharStream;->available:I

    .line 259
    new-array v0, p4, [C

    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    .line 260
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    .line 261
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    .line 262
    return-void
.end method


# virtual methods
.method public BeginToken()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    .line 136
    invoke-virtual {p0}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v0

    .line 137
    .local v0, c:C
    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iput v1, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    .line 139
    return v0
.end method

.method public Done()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 416
    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    .line 417
    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    .line 418
    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    .line 419
    return-void
.end method

.method protected ExpandBuff(Z)V
    .locals 10
    .parameter "wrapAround"

    .prologue
    const/4 v9, 0x0

    .line 41
    iget v4, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    .line 42
    .local v1, newbuffer:[C
    iget v4, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    .line 43
    .local v2, newbufline:[I
    iget v4, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    .line 47
    .local v0, newbufcolumn:[I
    if-eqz p1, :cond_0

    .line 49
    :try_start_0
    iget-object v4, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    iget v5, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v4, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput-object v1, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    .line 53
    iget-object v4, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    iget v5, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v4, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-object v2, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    .line 57
    iget-object v4, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v4, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    .line 61
    iget v4, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v5, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v6, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iput v4, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iget v4, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    .line 84
    iget v4, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iput v4, p0, Lcom/google/gson/SimpleCharStream;->available:I

    .line 85
    iput v9, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    .line 86
    return-void

    .line 65
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    iget v5, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v1, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    .line 68
    iget-object v4, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    iget v5, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v2, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    .line 71
    iget-object v4, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    .line 74
    iget v4, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v5, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iput v4, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v3

    .line 79
    .local v3, t:Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected FillBuff()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 90
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I

    iget v3, p0, Lcom/google/gson/SimpleCharStream;->available:I

    if-ne v2, v3, :cond_0

    .line 92
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->available:I

    iget v3, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    if-ne v2, v3, :cond_4

    .line 94
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    if-le v2, v4, :cond_2

    .line 96
    iput v7, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    .line 97
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lcom/google/gson/SimpleCharStream;->available:I

    .line 114
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v3, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    iget v4, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I

    iget v5, p0, Lcom/google/gson/SimpleCharStream;->available:I

    iget v6, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, i:I
    if-ne v1, v8, :cond_7

    .line 116
    iget-object v2, p0, Lcom/google/gson/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 117
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/io/IOException;
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    .line 125
    invoke-virtual {p0, v7}, Lcom/google/gson/SimpleCharStream;->backup(I)V

    .line 126
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    if-ne v2, v8, :cond_1

    .line 127
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iput v2, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    .line 128
    :cond_1
    throw v0

    .line 99
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    if-gez v2, :cond_3

    .line 100
    iput v7, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/gson/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 104
    :cond_4
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->available:I

    iget v3, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    if-le v2, v3, :cond_5

    .line 105
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iput v2, p0, Lcom/google/gson/SimpleCharStream;->available:I

    goto :goto_0

    .line 106
    :cond_5
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lcom/google/gson/SimpleCharStream;->available:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_6

    .line 107
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/gson/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 109
    :cond_6
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lcom/google/gson/SimpleCharStream;->available:I

    goto :goto_0

    .line 120
    .restart local v1       #i:I
    :cond_7
    :try_start_1
    iget v2, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 389
    iget v0, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v4, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 392
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    iget v3, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v5, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetSuffix(I)[C
    .locals 5
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 399
    new-array v0, p1, [C

    .line 401
    .local v0, ret:[C
    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    :goto_0
    return-object v0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v3, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    iget-object v1, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 372
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/google/gson/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 373
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 384
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/gson/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 385
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    .line 360
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/google/gson/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 361
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 366
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/gson/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 367
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 378
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/gson/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 379
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 353
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/google/gson/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 354
    return-void

    .line 353
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 307
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/google/gson/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 308
    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 301
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/gson/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 302
    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 2
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    const/4 v1, 0x0

    .line 281
    iput-object p1, p0, Lcom/google/gson/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 282
    iput p2, p0, Lcom/google/gson/SimpleCharStream;->line:I

    .line 283
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->column:I

    .line 285
    iget-object v0, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    array-length v0, v0

    if-eq p4, v0, :cond_1

    .line 287
    :cond_0
    iput p4, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iput p4, p0, Lcom/google/gson/SimpleCharStream;->available:I

    .line 288
    new-array v0, p4, [C

    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    .line 289
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    .line 290
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    .line 292
    :cond_1
    iput-boolean v1, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsLF:Z

    .line 293
    iput v1, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I

    iput v1, p0, Lcom/google/gson/SimpleCharStream;->inBuf:I

    iput v1, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    .line 295
    return-void
.end method

.method protected UpdateLineColumn(C)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    iget v0, p0, Lcom/google/gson/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->column:I

    .line 146
    iget-boolean v0, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsLF:Z

    if-eqz v0, :cond_1

    .line 148
    iput-boolean v2, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsLF:Z

    .line 149
    iget v0, p0, Lcom/google/gson/SimpleCharStream;->line:I

    iput v1, p0, Lcom/google/gson/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->line:I

    .line 162
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->line:I

    aput v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->column:I

    aput v2, v0, v1

    .line 180
    return-void

    .line 151
    :cond_1
    iget-boolean v0, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_0

    .line 153
    iput-boolean v2, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsCR:Z

    .line 154
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 156
    iput-boolean v1, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_0

    .line 159
    :cond_2
    iget v0, p0, Lcom/google/gson/SimpleCharStream;->line:I

    iput v1, p0, Lcom/google/gson/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->line:I

    goto :goto_0

    .line 165
    :pswitch_1
    iput-boolean v1, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_1

    .line 168
    :pswitch_2
    iput-boolean v1, p0, Lcom/google/gson/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_1

    .line 171
    :pswitch_3
    iget v0, p0, Lcom/google/gson/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->column:I

    .line 172
    iget v0, p0, Lcom/google/gson/SimpleCharStream;->column:I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->tabSize:I

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->column:I

    iget v3, p0, Lcom/google/gson/SimpleCharStream;->tabSize:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->column:I

    goto :goto_1

    .line 162
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public adjustBeginLineColumn(II)V
    .locals 12
    .parameter "newLine"
    .parameter "newCol"

    .prologue
    .line 426
    iget v8, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    .line 429
    .local v8, start:I
    iget v9, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v10, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    if-lt v9, v10, :cond_0

    .line 431
    iget v9, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v10, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/gson/SimpleCharStream;->inBuf:I

    add-int/2addr v9, v10

    add-int/lit8 v5, v9, 0x1

    .line 438
    .local v5, len:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    const/4 v4, 0x0

    .line 439
    .local v4, k:I
    const/4 v7, 0x0

    .local v7, nextColDiff:I
    const/4 v0, 0x0

    .line 441
    .local v0, columnDiff:I
    :goto_1
    if-ge v1, v5, :cond_1

    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    iget v10, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    rem-int v4, v8, v11

    aget v10, v10, v4

    if-ne v9, v10, :cond_1

    .line 443
    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    aput p1, v9, v3

    .line 444
    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v4

    add-int/2addr v9, v0

    iget-object v10, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    aget v10, v10, v3

    sub-int v7, v9, v10

    .line 445
    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    .line 446
    move v0, v7

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 435
    .end local v0           #columnDiff:I
    .end local v1           #i:I
    .end local v3           #j:I
    .end local v4           #k:I
    .end local v5           #len:I
    .end local v7           #nextColDiff:I
    :cond_0
    iget v9, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    iget v10, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/google/gson/SimpleCharStream;->inBuf:I

    add-int v5, v9, v10

    .restart local v5       #len:I
    goto :goto_0

    .line 450
    .restart local v0       #columnDiff:I
    .restart local v1       #i:I
    .restart local v3       #j:I
    .restart local v4       #k:I
    .restart local v7       #nextColDiff:I
    :cond_1
    if-ge v1, v5, :cond_4

    .line 452
    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    add-int/lit8 v6, p1, 0x1

    .end local p1
    .local v6, newLine:I
    aput p1, v9, v3

    .line 453
    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    move v2, v1

    .line 455
    .end local v1           #i:I
    .local v2, i:I
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-ge v2, v5, :cond_3

    .line 457
    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    iget v10, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    rem-int v11, v8, v11

    aget v10, v10, v11

    if-eq v9, v10, :cond_2

    .line 458
    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    add-int/lit8 p1, v6, 0x1

    .end local v6           #newLine:I
    .restart local p1
    aput v6, v9, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move v6, p1

    .end local p1
    .restart local v6       #newLine:I
    goto :goto_2

    .line 460
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_2
    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    aput v6, v9, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_3
    move p1, v6

    .line 464
    .end local v6           #newLine:I
    .restart local p1
    :cond_4
    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    aget v9, v9, v3

    iput v9, p0, Lcom/google/gson/SimpleCharStream;->line:I

    .line 465
    iget-object v9, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v3

    iput v9, p0, Lcom/google/gson/SimpleCharStream;->column:I

    .line 466
    return-void
.end method

.method public backup(I)V
    .locals 2
    .parameter "amount"

    .prologue
    .line 245
    iget v0, p0, Lcom/google/gson/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->inBuf:I

    .line 246
    iget v0, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 247
    iget v0, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    .line 248
    :cond_0
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/gson/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method protected getTabSize(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 36
    iget v0, p0, Lcom/google/gson/SimpleCharStream;->tabSize:I

    return v0
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget v1, p0, Lcom/google/gson/SimpleCharStream;->inBuf:I

    if-lez v1, :cond_1

    .line 187
    iget v1, p0, Lcom/google/gson/SimpleCharStream;->inBuf:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/SimpleCharStream;->inBuf:I

    .line 189
    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->bufsize:I

    if-ne v1, v2, :cond_0

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 201
    :goto_0
    return v0

    .line 195
    :cond_1
    iget v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->maxNextCharInd:I

    if-lt v1, v2, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/google/gson/SimpleCharStream;->FillBuff()V

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/google/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/google/gson/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 200
    .local v0, c:C
    invoke-virtual {p0, v0}, Lcom/google/gson/SimpleCharStream;->UpdateLineColumn(C)V

    goto :goto_0
.end method

.method protected setTabSize(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 35
    iput p1, p0, Lcom/google/gson/SimpleCharStream;->tabSize:I

    return-void
.end method
