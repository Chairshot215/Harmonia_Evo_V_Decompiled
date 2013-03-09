.class public Lgnu/text/LineBufferedReader;
.super Ljava/io/Reader;
.source "LineBufferedReader.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x2000

.field private static final CONVERT_CR:I = 0x1

.field private static final DONT_KEEP_FULL_LINES:I = 0x8

.field private static final PREV_WAS_CR:I = 0x4

.field private static final USER_BUFFER:I = 0x2


# instance fields
.field public buffer:[C

.field private flags:I

.field highestPos:I

.field protected in:Ljava/io/Reader;

.field public limit:I

.field protected lineNumber:I

.field private lineStartPos:I

.field protected markPos:I

.field path:Lgnu/text/Path;

.field public pos:I

.field protected readAheadLimit:I

.field public readState:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 48
    const/16 v0, 0xa

    iput-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 134
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 48
    const/16 v0, 0xa

    iput-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 139
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    .line 140
    return-void
.end method

.method private clearMark()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 164
    iput v3, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 166
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v2, :cond_1

    move v1, v3

    .line 169
    .local v1, i:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lt v1, v2, :cond_2

    .line 180
    return-void

    .line 166
    .end local v1           #i:I
    :cond_1
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    move v1, v2

    goto :goto_0

    .line 171
    .restart local v1       #i:I
    :cond_2
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    const/4 v3, 0x1

    sub-int v3, v1, v3

    aget-char v0, v2, v3

    .line 172
    .local v0, ch:C
    if-eq v0, v4, :cond_3

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v2, v2, v1

    if-eq v2, v4, :cond_0

    .line 175
    :cond_3
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 176
    iput v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_0
.end method

.method static countLines([CII)I
    .locals 6
    .parameter "buffer"
    .parameter "start"
    .parameter "limit"

    .prologue
    const/16 v5, 0xd

    .line 637
    const/4 v1, 0x0

    .line 638
    .local v1, count:I
    const/4 v3, 0x0

    .line 639
    .local v3, prev:C
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 641
    aget-char v0, p0, v2

    .line 642
    .local v0, ch:C
    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    if-ne v0, v5, :cond_2

    .line 643
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 644
    :cond_2
    move v3, v0

    .line 639
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 646
    .end local v0           #ch:C
    :cond_3
    return v1
.end method

.method private reserve([CI)V
    .locals 4
    .parameter "buffer"
    .parameter "reserve"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    add-int/2addr p2, v1

    .line 212
    array-length v1, p1

    if-gt p2, v1, :cond_1

    .line 213
    const/4 v0, 0x0

    .line 249
    .local v0, saveStart:I
    :goto_0
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lez v1, :cond_0

    .line 250
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :cond_0
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 252
    return-void

    .line 216
    .end local v0           #saveStart:I
    :cond_1
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 217
    .restart local v0       #saveStart:I
    iget v1, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v1, :cond_3

    iget v1, p0, Lgnu/text/LineBufferedReader;->markPos:I

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v1, v2, :cond_3

    .line 219
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v2, p0, Lgnu/text/LineBufferedReader;->markPos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gt v1, v2, :cond_2

    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    iget v1, p0, Lgnu/text/LineBufferedReader;->markPos:I

    sub-int v1, p2, v1

    array-length v2, p1

    if-le v1, v2, :cond_5

    .line 222
    :cond_2
    invoke-direct {p0}, Lgnu/text/LineBufferedReader;->clearMark()V

    .line 227
    :cond_3
    :goto_1
    array-length v1, p1

    sub-int/2addr p2, v1

    .line 228
    if-gt p2, v0, :cond_6

    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v0, v1, :cond_4

    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 243
    :cond_4
    :goto_2
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 244
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 245
    iget v1, p0, Lgnu/text/LineBufferedReader;->markPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->markPos:I

    .line 246
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 247
    iget v1, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    goto :goto_0

    .line 224
    :cond_5
    iget v0, p0, Lgnu/text/LineBufferedReader;->markPos:I

    goto :goto_1

    .line 232
    :cond_6
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gt p2, v1, :cond_7

    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v0, v1, :cond_7

    .line 233
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_2

    .line 234
    :cond_7
    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    .line 235
    sub-int v1, v0, p2

    shr-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_2

    .line 238
    :cond_8
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v1, :cond_9

    .line 239
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 240
    :cond_9
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array p1, v1, [C

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public fill(I)I
    .locals 3
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public getColumnNumber()I
    .locals 12

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0xa

    const/4 v9, 0x0

    .line 433
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v6, :cond_1

    .line 435
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v7, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget-char v4, v6, v7

    .line 436
    .local v4, prev:C
    if-eq v4, v10, :cond_0

    if-ne v4, v11, :cond_1

    :cond_0
    move v6, v9

    .line 454
    .end local v4           #prev:C
    :goto_0
    return v6

    .line 439
    :cond_1
    iget v6, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gtz v6, :cond_2

    .line 440
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v7, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v6, v7

    goto :goto_0

    .line 444
    :cond_2
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v6, :cond_5

    move v5, v9

    .line 445
    .local v5, start:I
    :goto_1
    move v2, v5

    .local v2, i:I
    :goto_2
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v2, v6, :cond_6

    .line 447
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aget-char v0, v6, v2

    .line 448
    .local v0, ch:C
    if-eq v0, v10, :cond_3

    if-ne v0, v11, :cond_4

    .line 449
    :cond_3
    move v5, v3

    :cond_4
    move v2, v3

    .line 450
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .line 444
    .end local v0           #ch:C
    .end local v2           #i:I
    .end local v5           #start:I
    :cond_5
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    move v5, v6

    goto :goto_1

    .line 451
    .restart local v2       #i:I
    .restart local v5       #start:I
    :cond_6
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v1, v6, v5

    .line 452
    .local v1, col:I
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v6, :cond_7

    .line 453
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v1, v6

    :cond_7
    move v6, v1

    .line 454
    goto :goto_0
.end method

.method public final getConvertCR()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 5

    .prologue
    .line 404
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 405
    .local v0, lineno:I
    iget v2, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-nez v2, :cond_2

    .line 407
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v2, :cond_1

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v2, v3, :cond_1

    .line 409
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-char v1, v2, v3

    .line 410
    .local v1, prev:C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 416
    .end local v1           #prev:C
    :cond_1
    :goto_0
    return v0

    .line 415
    :cond_2
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    invoke-static {v2, v3, v4}, Lgnu/text/LineBufferedReader;->countLines([CII)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Lgnu/text/Path;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    return-object v0
.end method

.method public getReadState()C
    .locals 1

    .prologue
    .line 53
    iget-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    return v0
.end method

.method public incrLineNumber(II)V
    .locals 1
    .parameter "lineDelta"
    .parameter "lineStartPos"

    .prologue
    .line 426
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/2addr v0, p1

    iput v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 427
    iput p2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 428
    return-void
.end method

.method public lineStart(Z)V
    .locals 0
    .parameter "revisited"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .parameter "readAheadLimit"

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v0, :cond_0

    .line 465
    invoke-direct {p0}, Lgnu/text/LineBufferedReader;->clearMark()V

    .line 466
    :cond_0
    iput p1, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 467
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iput v0, p0, Lgnu/text/LineBufferedReader;->markPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public peek()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    .line 711
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v2, :cond_1

    .line 713
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-char v1, v2, v3

    .line 714
    .local v1, ch:C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    if-eq v1, v5, :cond_1

    .line 716
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v1, v2, v3

    .line 717
    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    const/16 v1, 0xa

    :cond_0
    move v2, v1

    .line 725
    .end local v1           #ch:C
    :goto_0
    return v2

    .line 722
    :cond_1
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 723
    .local v0, c:I
    if-ltz v0, :cond_2

    .line 724
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    :cond_2
    move v2, v0

    .line 725
    goto :goto_0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0xd

    const/4 v7, 0x1

    .line 257
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v4, :cond_8

    .line 258
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v5, v7

    aget-char v1, v4, v5

    .line 265
    .local v1, prev:C
    :goto_0
    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_5

    .line 267
    :cond_0
    iget v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v4, v5, :cond_2

    iget v4, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-eqz v4, :cond_1

    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->markPos:I

    if-gt v4, v5, :cond_2

    .line 269
    :cond_1
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iput v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 270
    iget v4, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 272
    :cond_2
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    if-ge v4, v5, :cond_b

    move v3, v7

    .line 273
    .local v3, revisited:Z
    :goto_1
    if-ne v1, v9, :cond_3

    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-gt v4, v7, :cond_c

    iget v4, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_4

    .line 276
    :cond_3
    :goto_2
    invoke-virtual {p0, v3}, Lgnu/text/LineBufferedReader;->lineStart(Z)V

    .line 278
    :cond_4
    if-nez v3, :cond_5

    .line 279
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 282
    .end local v3           #revisited:Z
    :cond_5
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v5, :cond_10

    .line 284
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    if-nez v4, :cond_d

    .line 285
    const/16 v4, 0x2000

    new-array v4, v4, [C

    iput-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 288
    :cond_6
    :goto_3
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-nez v4, :cond_7

    .line 290
    if-ne v1, v8, :cond_e

    .line 291
    iget v4, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 295
    :cond_7
    :goto_4
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v4, v4

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lgnu/text/LineBufferedReader;->fill(I)I

    move-result v2

    .line 296
    .local v2, readCount:I
    if-gtz v2, :cond_f

    .line 297
    const/4 v4, -0x1

    .line 324
    .end local v2           #readCount:I
    :goto_5
    return v4

    .line 259
    .end local v1           #prev:C
    :cond_8
    iget v4, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    .line 260
    const/16 v1, 0xd

    .restart local v1       #prev:C
    goto :goto_0

    .line 261
    .end local v1           #prev:C
    :cond_9
    iget v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v4, :cond_a

    .line 262
    const/16 v1, 0xa

    .restart local v1       #prev:C
    goto :goto_0

    .line 264
    .end local v1           #prev:C
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #prev:C
    goto :goto_0

    .line 272
    :cond_b
    const/4 v4, 0x0

    move v3, v4

    goto :goto_1

    .line 273
    .restart local v3       #revisited:Z
    :cond_c
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    aget-char v4, v4, v5

    if-eq v4, v8, :cond_4

    goto :goto_2

    .line 286
    .end local v3           #revisited:Z
    :cond_d
    iget v4, p0, Lgnu/text/LineBufferedReader;->limit:I

    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v5, v5

    if-ne v4, v5, :cond_6

    .line 287
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    invoke-direct {p0, v4, v7}, Lgnu/text/LineBufferedReader;->reserve([CI)V

    goto :goto_3

    .line 293
    :cond_e
    iget v4, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_4

    .line 298
    .restart local v2       #readCount:I
    :cond_f
    iget v4, p0, Lgnu/text/LineBufferedReader;->limit:I

    add-int/2addr v4, v2

    iput v4, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 301
    .end local v2           #readCount:I
    :cond_10
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v4, v5

    .line 302
    .local v0, ch:I
    if-ne v0, v9, :cond_12

    .line 304
    if-ne v1, v8, :cond_13

    .line 310
    iget v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v5, v7

    if-ne v4, v5, :cond_11

    .line 312
    iget v4, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    sub-int/2addr v4, v7

    iput v4, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 313
    iget v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v4, v7

    iput v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 315
    :cond_11
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 316
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    goto :goto_5

    .line 319
    :cond_12
    if-ne v0, v8, :cond_13

    .line 321
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v9

    .line 322
    goto :goto_5

    :cond_13
    move v4, v0

    .line 324
    goto :goto_5
.end method

.method public read([CII)I
    .locals 10
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    .line 331
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v6, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v5, v6, :cond_1

    .line 332
    const/4 v0, 0x0

    .line 339
    .local v0, ch:I
    :goto_0
    move v4, p3

    .local v4, to_do:I
    move v2, p2

    .line 340
    .end local p2
    .local v2, off:I
    :goto_1
    if-lez v4, :cond_c

    .line 342
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v6, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v5, v6, :cond_0

    if-eq v0, v8, :cond_0

    if-ne v0, v9, :cond_8

    .line 346
    :cond_0
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v6, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v5, v6, :cond_5

    if-ge v4, p3, :cond_5

    .line 347
    sub-int v5, p3, v4

    .line 377
    :goto_2
    return v5

    .line 333
    .end local v0           #ch:I
    .end local v2           #off:I
    .end local v4           #to_do:I
    .restart local p2
    :cond_1
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v5, :cond_2

    .line 334
    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget-char v0, v5, v6

    .restart local v0       #ch:I
    goto :goto_0

    .line 335
    .end local v0           #ch:I
    :cond_2
    iget v5, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_3

    iget v5, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v5, :cond_4

    .line 336
    :cond_3
    const/16 v0, 0xa

    .restart local v0       #ch:I
    goto :goto_0

    .line 338
    .end local v0           #ch:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #ch:I
    goto :goto_0

    .line 348
    .end local p2
    .restart local v2       #off:I
    .restart local v4       #to_do:I
    :cond_5
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 349
    if-gez v0, :cond_7

    .line 351
    sub-int/2addr p3, v4

    .line 352
    if-gtz p3, :cond_6

    const/4 v5, -0x1

    goto :goto_2

    :cond_6
    move v5, p3

    goto :goto_2

    .line 354
    :cond_7
    add-int/lit8 p2, v2, 0x1

    .end local v2           #off:I
    .restart local p2
    int-to-char v5, v0

    aput-char v5, p1, v2

    .line 355
    add-int/lit8 v4, v4, -0x1

    move v2, p2

    .end local p2
    .restart local v2       #off:I
    goto :goto_1

    .line 359
    :cond_8
    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 360
    .local v3, p:I
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 361
    .local v1, lim:I
    sub-int v5, v1, v3

    if-ge v4, v5, :cond_9

    .line 362
    add-int v1, v3, v4

    .line 363
    :cond_9
    :goto_3
    if-ge v3, v1, :cond_a

    .line 365
    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v0, v5, v3

    .line 368
    if-eq v0, v8, :cond_a

    if-ne v0, v9, :cond_b

    .line 373
    :cond_a
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v5, v3, v5

    sub-int/2addr v4, v5

    .line 374
    iput v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_1

    .line 370
    :cond_b
    add-int/lit8 p2, v2, 0x1

    .end local v2           #off:I
    .restart local p2
    int-to-char v5, v0

    aput-char v5, p1, v2

    .line 371
    add-int/lit8 v3, v3, 0x1

    move v2, p2

    .end local p2
    .restart local v2       #off:I
    goto :goto_3

    .end local v1           #lim:I
    .end local v3           #p:I
    :cond_c
    move v5, p3

    .line 377
    goto :goto_2
.end method

.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x1

    const/16 v7, 0xa

    .line 533
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 534
    .local v0, ch:I
    if-gez v0, :cond_0

    .line 535
    const/4 v4, 0x0

    .line 561
    :goto_0
    return-object v4

    .line 536
    :cond_0
    if-eq v0, v9, :cond_1

    if-ne v0, v7, :cond_2

    .line 537
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 538
    :cond_2
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v3, v4, v8

    .line 539
    .local v3, start:I
    :cond_3
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v4, v5, :cond_5

    .line 541
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v4, v5

    .line 542
    if-eq v0, v9, :cond_4

    if-ne v0, v7, :cond_3

    .line 544
    :cond_4
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v1, v4, v8

    .line 545
    .local v1, end:I
    if-eq v0, v7, :cond_7

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v4

    if-nez v4, :cond_7

    .line 547
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v5, :cond_6

    .line 549
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v4, v8

    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 558
    .end local v1           #end:I
    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 559
    .local v2, sbuf:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4, v3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 560
    const/16 v4, 0x49

    invoke-virtual {p0, v2, v4}, Lgnu/text/LineBufferedReader;->readLine(Ljava/lang/StringBuffer;C)V

    .line 561
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 552
    .end local v2           #sbuf:Ljava/lang/StringBuffer;
    .restart local v1       #end:I
    :cond_6
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_7

    .line 553
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 555
    :cond_7
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    sub-int v6, v1, v3

    invoke-direct {v4, v5, v3, v6}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public readLine(Ljava/lang/StringBuffer;C)V
    .locals 9
    .parameter "sbuf"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0x49

    const/4 v6, 0x1

    const/16 v5, 0xa

    .line 491
    :goto_0
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 492
    .local v0, ch:I
    if-gez v0, :cond_1

    .line 524
    :cond_0
    :goto_1
    return-void

    .line 494
    :cond_1
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v1, v2, v6

    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 495
    .local v1, start:I
    :cond_2
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v2, v3, :cond_9

    .line 497
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v2, v3

    .line 498
    if-eq v0, v8, :cond_3

    if-ne v0, v5, :cond_2

    .line 500
    :cond_3
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 501
    const/16 v2, 0x50

    if-ne p2, v2, :cond_4

    .line 503
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v2, v6

    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_1

    .line 506
    :cond_4
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v2

    if-nez v2, :cond_5

    if-ne v0, v5, :cond_6

    .line 508
    :cond_5
    if-eq p2, v7, :cond_0

    .line 509
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 513
    :cond_6
    if-eq p2, v7, :cond_7

    .line 514
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    :cond_7
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 516
    if-ne v0, v5, :cond_8

    .line 518
    if-eq p2, v7, :cond_0

    .line 519
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 521
    :cond_8
    if-ltz v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    goto :goto_1

    .line 527
    :cond_9
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    iget v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gtz v0, :cond_0

    .line 473
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    if-le v0, v1, :cond_1

    .line 475
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iput v0, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 476
    :cond_1
    iget v0, p0, Lgnu/text/LineBufferedReader;->markPos:I

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 478
    return-void
.end method

.method public setBuffer([C)V
    .locals 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 186
    if-nez p1, :cond_1

    .line 188
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v0, v0

    new-array p1, v0, [C

    .line 191
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 194
    :cond_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_1
    iget v0, p0, Lgnu/text/LineBufferedReader;->limit:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v0, v1

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 199
    new-instance v0, Ljava/io/IOException;

    const-string v1, "setBuffer - too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 201
    invoke-direct {p0, p1, v2}, Lgnu/text/LineBufferedReader;->reserve([CI)V

    goto :goto_0
.end method

.method public final setConvertCR(Z)V
    .locals 1
    .parameter "convertCR"

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_0
.end method

.method public setKeepFullLines(Z)V
    .locals 1
    .parameter "keep"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_0
.end method

.method public setLineNumber(I)V
    .locals 2
    .parameter "lineNumber"

    .prologue
    .line 421
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 422
    return-void
.end method

.method public setName(Ljava/lang/Object;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 397
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/text/LineBufferedReader;->setPath(Lgnu/text/Path;)V

    .line 398
    return-void
.end method

.method public setPath(Lgnu/text/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 387
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    .line 388
    return-void
.end method

.method public skip(I)I
    .locals 9
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    .line 567
    if-gez p1, :cond_1

    .line 569
    neg-int v3, p1

    .line 570
    .local v3, to_do:I
    :goto_0
    if-lez v3, :cond_0

    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v4, :cond_0

    .line 571
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread()V

    .line 570
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 572
    :cond_0
    add-int v4, p1, v3

    .line 615
    :goto_1
    return v4

    .line 577
    .end local v3           #to_do:I
    :cond_1
    move v3, p1

    .line 579
    .restart local v3       #to_do:I
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v5, :cond_3

    .line 580
    const/4 v0, 0x0

    .line 587
    .local v0, ch:I
    :goto_2
    if-lez v3, :cond_c

    .line 589
    if-eq v0, v7, :cond_2

    if-eq v0, v8, :cond_2

    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v5, :cond_8

    .line 591
    :cond_2
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 592
    if-gez v0, :cond_7

    .line 593
    sub-int v4, p1, v3

    goto :goto_1

    .line 581
    .end local v0           #ch:I
    :cond_3
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v4, :cond_4

    .line 582
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-char v0, v4, v5

    .restart local v0       #ch:I
    goto :goto_2

    .line 583
    .end local v0           #ch:I
    :cond_4
    iget v4, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_5

    iget v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v4, :cond_6

    .line 584
    :cond_5
    const/16 v0, 0xa

    .restart local v0       #ch:I
    goto :goto_2

    .line 586
    .end local v0           #ch:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #ch:I
    goto :goto_2

    .line 594
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 598
    :cond_8
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 599
    .local v2, p:I
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 600
    .local v1, lim:I
    sub-int v4, v1, v2

    if-ge v3, v4, :cond_9

    .line 601
    add-int v1, v2, v3

    .line 602
    :cond_9
    :goto_3
    if-ge v2, v1, :cond_a

    .line 604
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v0, v4, v2

    .line 607
    if-eq v0, v7, :cond_a

    if-ne v0, v8, :cond_b

    .line 611
    :cond_a
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v4, v2, v4

    sub-int/2addr v3, v4

    .line 612
    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_2

    .line 609
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1           #lim:I
    .end local v2           #p:I
    :cond_c
    move v4, p1

    .line 615
    goto :goto_1
.end method

.method public skip()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    .line 633
    return-void
.end method

.method public skipRestOfLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    .line 655
    :cond_0
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 656
    .local v0, c:I
    if-gez v0, :cond_2

    .line 668
    :cond_1
    :goto_0
    return-void

    .line 658
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 660
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 661
    if-ltz v0, :cond_1

    if-eq v0, v2, :cond_1

    .line 662
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread()V

    goto :goto_0

    .line 665
    :cond_3
    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method public final skip_quick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 628
    return-void
.end method

.method public unread()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 674
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-nez v2, :cond_0

    .line 675
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unread too much"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 676
    :cond_0
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v2, v4

    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 677
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v2, v3

    .line 678
    .local v0, ch:C
    if-eq v0, v5, :cond_1

    if-ne v0, v6, :cond_6

    .line 680
    :cond_1
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v2, :cond_2

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v3, v4

    aget-char v2, v2, v3

    if-ne v2, v6, :cond_2

    .line 681
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v2, v4

    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 682
    :cond_2
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ge v2, v3, :cond_6

    .line 684
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    sub-int/2addr v2, v4

    iput v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 686
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .local v1, i:I
    :cond_3
    if-lez v1, :cond_5

    .line 688
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v2, v1

    .line 689
    if-eq v0, v6, :cond_4

    if-ne v0, v5, :cond_3

    .line 691
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 695
    :cond_5
    iput v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 698
    .end local v1           #i:I
    :cond_6
    return-void
.end method

.method public unread_quick()V
    .locals 2

    .prologue
    .line 705
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 706
    return-void
.end method
