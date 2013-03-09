.class final Lcom/htc/gson/SimpleCharStream;
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

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/htc/gson/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/gson/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/gson/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/gson/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/gson/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/htc/gson/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/htc/gson/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/gson/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->line:I

    iput-boolean v1, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsLF:Z

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->inBuf:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->tabSize:I

    iput-object p1, p0, Lcom/htc/gson/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iput p2, p0, Lcom/htc/gson/SimpleCharStream;->line:I

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    iput p4, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iput p4, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    new-array v0, p4, [C

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

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

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    invoke-virtual {p0}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v0

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    return v0
.end method

.method public Done()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    return-void
.end method

.method protected ExpandBuff(Z)V
    .locals 10

    const/4 v9, 0x0

    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget v5, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget-object v4, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iget v5, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iget-object v4, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v5, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v6, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iput v4, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iput v4, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    iput v9, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget v5, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget-object v4, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iget v5, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iget-object v4, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v5, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iput v4, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

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

    const/16 v4, 0x800

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I

    iget v3, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    iget v3, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    if-le v2, v4, :cond_2

    iput v7, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v3, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I

    iget v5, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    iget v6, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-ne v1, v8, :cond_7

    iget-object v2, p0, Lcom/htc/gson/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    invoke-virtual {p0, v7}, Lcom/htc/gson/SimpleCharStream;->backup(I)V

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    if-ne v2, v8, :cond_1

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iput v2, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    :cond_1
    throw v0

    :cond_2
    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    if-gez v2, :cond_3

    iput v7, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/gson/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    iget v3, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iput v2, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_6

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/gson/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    goto :goto_0

    :cond_7
    :try_start_1
    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget v3, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v5, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

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

    const/4 v4, 0x0

    new-array v0, p1, [C

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v3, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/htc/gson/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/gson/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/htc/gson/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/gson/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/gson/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/htc/gson/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/htc/gson/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/gson/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/gson/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iput p2, p0, Lcom/htc/gson/SimpleCharStream;->line:I

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    iget-object v0, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    array-length v0, v0

    if-eq p4, v0, :cond_1

    :cond_0
    iput p4, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iput p4, p0, Lcom/htc/gson/SimpleCharStream;->available:I

    new-array v0, p4, [C

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    :cond_1
    iput-boolean v1, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsLF:Z

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->inBuf:I

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    return-void
.end method

.method protected UpdateLineColumn(C)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    iget-boolean v0, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsLF:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsLF:Z

    iget v0, p0, Lcom/htc/gson/SimpleCharStream;->line:I

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->line:I

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->line:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    aput v2, v0, v1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsCR:Z

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    iput-boolean v1, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/gson/SimpleCharStream;->line:I

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->line:I

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_1

    :pswitch_2
    iput-boolean v1, p0, Lcom/htc/gson/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_1

    :pswitch_3
    iget v0, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    iget v0, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->tabSize:I

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    iget v3, p0, Lcom/htc/gson/SimpleCharStream;->tabSize:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    goto :goto_1

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

    iget v8, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    iget v9, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v10, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v10, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/gson/SimpleCharStream;->inBuf:I

    add-int/2addr v9, v10

    add-int/lit8 v5, v9, 0x1

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iget v10, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    rem-int v4, v8, v11

    aget v10, v10, v4

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    aput p1, v9, v3

    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v4

    add-int/2addr v9, v0

    iget-object v10, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    aget v10, v10, v3

    sub-int v7, v9, v10

    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    move v0, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget v9, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    iget v10, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/htc/gson/SimpleCharStream;->inBuf:I

    add-int v5, v9, v10

    goto :goto_0

    :cond_1
    if-ge v1, v5, :cond_4

    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    add-int/lit8 v6, p1, 0x1

    aput p1, v9, v3

    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    move v2, v1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    if-ge v2, v5, :cond_3

    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iget v10, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    rem-int v11, v8, v11

    aget v10, v10, v11

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    add-int/lit8 p1, v6, 0x1

    aput v6, v9, v3

    move v2, v1

    move v6, p1

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    aput v6, v9, v3

    move v2, v1

    goto :goto_2

    :cond_3
    move p1, v6

    :cond_4
    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    aget v9, v9, v3

    iput v9, p0, Lcom/htc/gson/SimpleCharStream;->line:I

    iget-object v9, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v3

    iput v9, p0, Lcom/htc/gson/SimpleCharStream;->column:I

    return-void
.end method

.method public backup(I)V
    .locals 2

    iget v0, p0, Lcom/htc/gson/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->inBuf:I

    iget v0, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    :cond_0
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    iget-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    iget-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2

    iget-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    iget-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    iget-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2

    iget-object v0, p0, Lcom/htc/gson/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method protected getTabSize(I)I
    .locals 1

    iget v0, p0, Lcom/htc/gson/SimpleCharStream;->tabSize:I

    return v0
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->inBuf:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->inBuf:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->inBuf:I

    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->bufsize:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    :cond_0
    iget-object v1, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->maxNextCharInd:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/gson/SimpleCharStream;->FillBuff()V

    :cond_2
    iget-object v1, p0, Lcom/htc/gson/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/htc/gson/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/htc/gson/SimpleCharStream;->UpdateLineColumn(C)V

    goto :goto_0
.end method

.method protected setTabSize(I)V
    .locals 0

    iput p1, p0, Lcom/htc/gson/SimpleCharStream;->tabSize:I

    return-void
.end method
