.class public Lcom/htc/android/mail/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# static fields
.field public static final CRLF:Lcom/htc/android/mail/ByteString;


# instance fields
.field mLength:I

.field mOffset:I

.field mStorage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/htc/android/mail/ByteString;

    const-string v1, "\r\n"

    invoke-direct {v0, v1}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/mail/ByteString;->CRLF:Lcom/htc/android/mail/ByteString;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ByteString;-><init>([B)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 8
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, lines:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, newSize:I
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ByteString;

    .line 85
    .local v3, s:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v3}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v3           #s:Lcom/htc/android/mail/ByteString;
    :cond_0
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 89
    iput v1, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    .line 90
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, offset:I
    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_1

    .line 95
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ByteString;

    .line 97
    .restart local v3       #s:Lcom/htc/android/mail/ByteString;
    iget-object v4, v3, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v5, v3, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget-object v6, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v7, v3, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget v4, v3, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int/2addr v2, v4

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    .end local v3           #s:Lcom/htc/android/mail/ByteString;
    :cond_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 52
    array-length v0, p1

    iput v0, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    .line 53
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 65
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iput v1, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 68
    iput p3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    .line 69
    return-void
.end method

.method public static native arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
.end method

.method private final growIfNeeded(I)V
    .locals 5
    .parameter "newSize"

    .prologue
    const/4 v4, 0x0

    .line 926
    iget v1, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 936
    :goto_0
    return-void

    .line 930
    :cond_0
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 932
    .local v0, newValue:[B
    iget-object v1, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v2, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    iput-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 935
    iput v4, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    goto :goto_0
.end method


# virtual methods
.method public final byteAt(I)B
    .locals 2
    .parameter "index"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v1, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final collapseWhitespaceLeft()Lcom/htc/android/mail/ByteString;
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 586
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v4, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-ge v3, v4, :cond_1

    .line 587
    iget-object v4, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v5, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v5, v3

    aget-byte v1, v4, v5

    .line 589
    .local v1, b:B
    if-gt v1, v6, :cond_1

    .line 590
    const/4 v2, 0x0

    .line 591
    .local v2, count:I
    move v0, v3

    .line 594
    .local v0, anchor:I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v5, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    if-gt v4, v6, :cond_0

    .line 595
    add-int/lit8 v2, v2, 0x1

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 599
    :cond_0
    if-lez v2, :cond_2

    .line 600
    invoke-virtual {p0, v0, v2}, Lcom/htc/android/mail/ByteString;->delete(II)V

    .line 608
    .end local v0           #anchor:I
    .end local v1           #b:B
    .end local v2           #count:I
    :cond_1
    return-object p0

    .line 586
    .restart local v0       #anchor:I
    .restart local v1       #b:B
    .restart local v2       #count:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final concat(Lcom/htc/android/mail/ByteString;)Lcom/htc/android/mail/ByteString;
    .locals 5
    .parameter "str"

    .prologue
    .line 416
    iget v0, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-object p0

    .line 420
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    iget v1, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ByteString;->growIfNeeded(I)V

    .line 421
    iget-object v0, p1, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v1, p1, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget-object v2, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v4, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int/2addr v3, v4

    iget v4, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    iget v0, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    iget v1, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    goto :goto_0
.end method

.method public final delete(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 644
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/ByteString;->delete(II)V

    .line 645
    return-void
.end method

.method public final delete(II)V
    .locals 6
    .parameter "index"
    .parameter "len"

    .prologue
    .line 654
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 658
    :cond_0
    if-ltz p1, :cond_1

    add-int v0, p1, p2

    iget v1, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-le v0, v1, :cond_2

    .line 659
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 662
    :cond_2
    if-nez p1, :cond_4

    .line 664
    iget v0, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 675
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    goto :goto_0

    .line 665
    :cond_4
    add-int v0, p1, p2

    iget v1, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-eq v0, v1, :cond_3

    .line 671
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v1, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v1, p1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int v5, p1, p2

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public final endsWith(Lcom/htc/android/mail/ByteString;)Z
    .locals 4
    .parameter "suffix"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 296
    iget v2, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    iget v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-le v2, v3, :cond_0

    .line 308
    :goto_0
    return v0

    .line 300
    :cond_0
    iget v2, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    if-nez v2, :cond_1

    move v0, v1

    .line 301
    goto :goto_0

    .line 304
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 305
    goto :goto_0

    .line 308
    :cond_2
    iget v1, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    iget v2, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/htc/android/mail/ByteString;->regionMatches(ILcom/htc/android/mail/ByteString;II)Z

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 12
    .parameter "anObject"

    .prologue
    const/4 v9, 0x0

    .line 315
    if-eqz p1, :cond_0

    instance-of v10, p1, Lcom/htc/android/mail/ByteString;

    if-nez v10, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v9

    :cond_1
    move-object v1, p1

    .line 319
    check-cast v1, Lcom/htc/android/mail/ByteString;

    .line 320
    .local v1, other:Lcom/htc/android/mail/ByteString;
    iget v5, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    .line 322
    .local v5, thisCount:I
    iget v10, v1, Lcom/htc/android/mail/ByteString;->mLength:I

    if-ne v5, v10, :cond_0

    .line 326
    iget-object v4, v1, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 327
    .local v4, otherValue:[B
    iget v2, v1, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 328
    .local v2, otherOffset:I
    iget-object v8, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 329
    .local v8, thisValue:[B
    iget v6, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 330
    .local v6, thisOffset:I
    add-int v0, v6, v5

    .local v0, limit:I
    move v7, v6

    .end local v6           #thisOffset:I
    .local v7, thisOffset:I
    move v3, v2

    .line 332
    .end local v2           #otherOffset:I
    .local v3, otherOffset:I
    :goto_1
    if-ge v7, v0, :cond_2

    .line 333
    add-int/lit8 v6, v7, 0x1

    .end local v7           #thisOffset:I
    .restart local v6       #thisOffset:I
    aget-byte v10, v8, v7

    add-int/lit8 v2, v3, 0x1

    .end local v3           #otherOffset:I
    .restart local v2       #otherOffset:I
    aget-byte v11, v4, v3

    if-ne v10, v11, :cond_0

    move v7, v6

    .end local v6           #thisOffset:I
    .restart local v7       #thisOffset:I
    move v3, v2

    .end local v2           #otherOffset:I
    .restart local v3       #otherOffset:I
    goto :goto_1

    .line 338
    :cond_2
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public final getBytes(I[BII)I
    .locals 4
    .parameter "srcBegin"
    .parameter "dst"
    .parameter "dstBegin"
    .parameter "len"

    .prologue
    .line 152
    iget v2, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int v3, p1, p4

    sub-int v0, v2, v3

    .line 155
    .local v0, remaining:I
    if-gez v0, :cond_0

    .line 156
    add-int/2addr p4, v0

    .line 157
    neg-int v1, p4

    .line 164
    .local v1, result:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v3, p1

    invoke-static {v2, v3, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    return v1

    .line 158
    .end local v1           #result:I
    :cond_0
    if-nez v0, :cond_1

    .line 159
    const/4 v1, 0x0

    .restart local v1       #result:I
    goto :goto_0

    .line 161
    .end local v1           #result:I
    :cond_1
    iget v2, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    sub-int v1, v2, v0

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, hash:I
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    .line 347
    .local v3, len:I
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 348
    .local v0, data:[B
    iget v4, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 350
    .local v4, offset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 351
    mul-int/lit8 v5, v1, 0x1f

    add-int v6, v4, v2

    aget-byte v6, v0, v6

    add-int v1, v5, v6

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_0
    return v1
.end method

.method public final indexOf(I)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/ByteString;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public final indexOf(II)I
    .locals 7
    .parameter "ch"
    .parameter "fromIndex"

    .prologue
    const/4 v4, -0x1

    .line 367
    if-gez p2, :cond_0

    .line 368
    const/4 p2, 0x0

    .line 371
    :cond_0
    iget v5, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-lt p2, v5, :cond_2

    .line 385
    :cond_1
    :goto_0
    return v4

    .line 375
    :cond_2
    iget v5, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int v3, v5, p2

    .line 376
    .local v3, start:I
    iget v5, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v6, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int v1, v5, v6

    .line 377
    .local v1, end:I
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 379
    .local v0, array:[B
    move v2, v3

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 380
    aget-byte v5, v0, v2

    if-ne v5, p1, :cond_3

    .line 381
    iget v4, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    sub-int v4, v2, v4

    goto :goto_0

    .line 379
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final lastIndexOf(II)I
    .locals 3
    .parameter "ch"
    .parameter "fromIndex"

    .prologue
    const/4 v1, -0x1

    .line 392
    if-gez p2, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v1

    .line 396
    :cond_1
    iget v2, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-lt p2, v2, :cond_2

    .line 397
    iget v2, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int/lit8 p2, v2, -0x1

    .line 400
    :cond_2
    iget v2, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int v0, v2, p2

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    if-lt v0, v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    aget-byte v2, v2, v0

    if-ne v2, p1, :cond_3

    .line 402
    iget v1, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    sub-int v1, v0, v1

    goto :goto_0

    .line 400
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    return v0
.end method

.method public final parseInt(I)I
    .locals 1
    .parameter "from"

    .prologue
    .line 769
    iget v0, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/ByteString;->parseInt(II)I

    move-result v0

    return v0
.end method

.method public final parseInt(II)I
    .locals 12
    .parameter "from"
    .parameter "to"

    .prologue
    const/16 v11, 0x20

    .line 785
    const/4 v8, 0x0

    .line 786
    .local v8, value:I
    const/4 v6, 0x1

    .line 787
    .local v6, sign:I
    move v1, p1

    .line 788
    .local v1, index:I
    const/16 v5, 0xa

    .line 790
    .local v5, radix:I
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 791
    .local v0, bytes:[B
    iget v4, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 793
    .local v4, offset:I
    move v2, p2

    .line 795
    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    add-int v9, v4, v1

    aget-byte v9, v0, v9

    if-gt v9, v11, :cond_0

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    :cond_0
    if-ne v1, v2, :cond_1

    .line 800
    const/4 v9, 0x0

    .line 845
    :goto_1
    return v9

    .line 803
    :cond_1
    add-int v9, v4, v1

    aget-byte v9, v0, v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_2

    .line 804
    const/4 v6, -0x1

    .line 805
    add-int/lit8 v1, v1, 0x1

    .line 808
    :cond_2
    if-lez v6, :cond_d

    const v3, 0xccccccc

    .line 811
    .local v3, limit:I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 814
    add-int v9, v4, v1

    aget-byte v9, v0, v9

    int-to-char v9, v9

    invoke-static {v9, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 816
    .local v7, test:I
    const/4 v9, -0x1

    if-ne v9, v7, :cond_6

    .line 817
    :goto_3
    if-ge v1, v2, :cond_3

    add-int v9, v4, v1

    aget-byte v9, v0, v9

    if-gt v9, v11, :cond_3

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 821
    :cond_3
    if-lt v1, v2, :cond_5

    .end local v7           #test:I
    :cond_4
    move v9, v8

    .line 845
    goto :goto_1

    .line 825
    .restart local v7       #test:I
    :cond_5
    new-instance v9, Ljava/lang/NumberFormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid character "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 830
    :cond_6
    if-lez v6, :cond_7

    if-gt v8, v3, :cond_8

    :cond_7
    if-gez v6, :cond_9

    if-ge v8, v3, :cond_9

    .line 831
    :cond_8
    new-instance v9, Ljava/lang/NumberFormatException;

    const-string v10, "Integer rollover"

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 834
    :cond_9
    mul-int/2addr v8, v5

    .line 836
    if-lez v6, :cond_a

    const v9, 0x7fffffff

    sub-int/2addr v9, v7

    if-gt v8, v9, :cond_b

    :cond_a
    if-gez v6, :cond_c

    const/high16 v9, -0x8000

    add-int/2addr v9, v7

    if-ge v8, v9, :cond_c

    .line 838
    :cond_b
    new-instance v9, Ljava/lang/NumberFormatException;

    const-string v10, "Integer rollover"

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 841
    :cond_c
    mul-int v9, v7, v6

    add-int/2addr v8, v9

    .line 842
    add-int/lit8 v1, v1, 0x1

    .line 843
    goto :goto_2

    .line 808
    .end local v3           #limit:I
    .end local v7           #test:I
    :cond_d
    const v3, -0xccccccc

    goto :goto_2
.end method

.method public final regionMatches(ILcom/htc/android/mail/ByteString;II)Z
    .locals 11
    .parameter "toffset"
    .parameter "other"
    .parameter "ooffset"
    .parameter "len"

    .prologue
    const/4 v8, 0x0

    .line 192
    or-int v9, p1, p3

    if-gez v9, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v8

    .line 196
    :cond_1
    add-int v9, p1, p4

    iget v10, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-gt v9, v10, :cond_0

    .line 200
    add-int v9, p3, p4

    iget v10, p2, Lcom/htc/android/mail/ByteString;->mLength:I

    if-gt v9, v10, :cond_0

    .line 204
    iget-object v7, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 205
    .local v7, thisText:[B
    iget v9, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int v5, v9, p1

    .line 207
    .local v5, thisOffset:I
    iget-object v4, p2, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 208
    .local v4, otherText:[B
    iget v9, p2, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int v2, v9, p3

    .line 210
    .local v2, otherOffset:I
    move v1, p4

    .line 212
    .local v1, limit:I
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v2

    .end local v2           #otherOffset:I
    .local v3, otherOffset:I
    move v6, v5

    .end local v5           #thisOffset:I
    .local v6, thisOffset:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 213
    add-int/lit8 v5, v6, 0x1

    .end local v6           #thisOffset:I
    .restart local v5       #thisOffset:I
    aget-byte v9, v7, v6

    add-int/lit8 v2, v3, 0x1

    .end local v3           #otherOffset:I
    .restart local v2       #otherOffset:I
    aget-byte v10, v4, v3

    if-ne v9, v10, :cond_0

    .line 212
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2           #otherOffset:I
    .restart local v3       #otherOffset:I
    move v6, v5

    .end local v5           #thisOffset:I
    .restart local v6       #thisOffset:I
    goto :goto_1

    .line 218
    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public final regionMatches(ZILcom/htc/android/mail/ByteString;II)Z
    .locals 15
    .parameter "ignoreCase"
    .parameter "toffset"
    .parameter "other"
    .parameter "ooffset"
    .parameter "len"

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    move/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/ByteString;->regionMatches(ILcom/htc/android/mail/ByteString;II)Z

    move-result v13

    .line 274
    :goto_0
    return v13

    .line 230
    :cond_0
    or-int v13, p2, p4

    if-gez v13, :cond_1

    .line 231
    const/4 v13, 0x0

    goto :goto_0

    .line 234
    :cond_1
    add-int v13, p2, p5

    iget v14, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-le v13, v14, :cond_2

    .line 235
    const/4 v13, 0x0

    goto :goto_0

    .line 238
    :cond_2
    add-int v13, p4, p5

    move-object/from16 v0, p3

    iget v14, v0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-le v13, v14, :cond_3

    .line 239
    const/4 v13, 0x0

    goto :goto_0

    .line 242
    :cond_3
    iget-object v12, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 243
    .local v12, thisText:[B
    iget v13, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int v10, v13, p2

    .line 245
    .local v10, thisOffset:I
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 246
    .local v8, otherText:[B
    move-object/from16 v0, p3

    iget v13, v0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int v6, v13, p4

    .line 248
    .local v6, otherOffset:I
    const/4 v4, 0x0

    .local v4, i:I
    move v7, v6

    .end local v6           #otherOffset:I
    .local v7, otherOffset:I
    move v11, v10

    .end local v10           #thisOffset:I
    .local v11, thisOffset:I
    :goto_1
    move/from16 v0, p5

    if-ge v4, v0, :cond_8

    .line 249
    add-int/lit8 v10, v11, 0x1

    .end local v11           #thisOffset:I
    .restart local v10       #thisOffset:I
    aget-byte v13, v12, v11

    int-to-char v9, v13

    .line 250
    .local v9, thisC:C
    add-int/lit8 v6, v7, 0x1

    .end local v7           #otherOffset:I
    .restart local v6       #otherOffset:I
    aget-byte v13, v8, v7

    int-to-char v5, v13

    .line 253
    .local v5, otherC:C
    const/16 v13, 0x7f

    if-ge v9, v13, :cond_6

    const/16 v13, 0x7f

    if-ge v5, v13, :cond_6

    .line 254
    const/16 v13, 0x41

    if-lt v9, v13, :cond_4

    const/16 v13, 0x5a

    if-gt v9, v13, :cond_4

    .line 255
    add-int/lit8 v13, v9, 0x20

    int-to-char v9, v13

    .line 258
    :cond_4
    const/16 v13, 0x41

    if-lt v5, v13, :cond_5

    const/16 v13, 0x5a

    if-gt v5, v13, :cond_5

    .line 259
    add-int/lit8 v13, v5, 0x20

    int-to-char v5, v13

    .line 262
    :cond_5
    if-eq v9, v5, :cond_7

    .line 263
    const/4 v13, 0x0

    goto :goto_0

    .line 267
    :cond_6
    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v14

    if-eq v13, v14, :cond_7

    .line 269
    const/4 v13, 0x0

    goto :goto_0

    .line 248
    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #otherOffset:I
    .restart local v7       #otherOffset:I
    move v11, v10

    .end local v10           #thisOffset:I
    .restart local v11       #thisOffset:I
    goto :goto_1

    .line 274
    .end local v5           #otherC:C
    .end local v9           #thisC:C
    :cond_8
    const/4 v13, 0x1

    goto :goto_0
.end method

.method public final removeComments()V
    .locals 7

    .prologue
    .line 683
    const/4 v3, 0x0

    .line 684
    .local v3, lastWasSlash:Z
    const/4 v4, 0x0

    .line 685
    .local v4, quoteDepth:I
    const/4 v0, -0x1

    .line 687
    .local v0, anchor:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-ge v2, v5, :cond_1

    .line 688
    iget-object v5, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v6, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v6, v2

    aget-byte v1, v5, v6

    .line 690
    .local v1, b:B
    packed-switch v1, :pswitch_data_0

    .line 726
    const/4 v3, 0x0

    .line 687
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 692
    :pswitch_0
    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 693
    :goto_2
    goto :goto_1

    .line 692
    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 728
    .end local v1           #b:B
    :cond_1
    return-void

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method public final set(II)V
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v1, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v1, p1

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 120
    return-void
.end method

.method public final startsWith(Lcom/htc/android/mail/ByteString;)Z
    .locals 3
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 281
    iget v1, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    if-eq p1, p0, :cond_0

    .line 289
    iget v0, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-virtual {p0, v2, p1, v2, v0}, Lcom/htc/android/mail/ByteString;->regionMatches(ILcom/htc/android/mail/ByteString;II)Z

    move-result v0

    goto :goto_0
.end method

.method public final substring(I)Lcom/htc/android/mail/ByteString;
    .locals 1
    .parameter "beginIndex"

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/ByteString;->substring(II)Lcom/htc/android/mail/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final substring(II)Lcom/htc/android/mail/ByteString;
    .locals 4
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 183
    new-instance v0, Lcom/htc/android/mail/ByteString;

    iget-object v1, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v2, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/ByteString;-><init>([BII)V

    return-object v0
.end method

.method public final toLowerCase()Lcom/htc/android/mail/ByteString;
    .locals 7

    .prologue
    .line 432
    const/4 v3, 0x0

    .line 434
    .local v3, replacement:Lcom/htc/android/mail/ByteString;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-ge v1, v4, :cond_4

    .line 435
    iget-object v4, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v5, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v5, v1

    aget-byte v2, v4, v5

    .line 436
    .local v2, oc:B
    and-int/lit16 v0, v2, 0xff

    .line 443
    .local v0, c:I
    const/16 v4, 0x7f

    if-gt v0, v4, :cond_3

    .line 444
    const/16 v4, 0x41

    if-lt v0, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_0

    .line 445
    add-int/lit8 v0, v0, 0x20

    .line 451
    :cond_0
    :goto_1
    if-eq v0, v2, :cond_2

    .line 452
    if-nez v3, :cond_1

    .line 453
    new-instance v3, Lcom/htc/android/mail/ByteString;

    .end local v3           #replacement:Lcom/htc/android/mail/ByteString;
    iget-object v4, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v5, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v6, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-direct {v3, v4, v5, v6}, Lcom/htc/android/mail/ByteString;-><init>([BII)V

    .line 456
    .restart local v3       #replacement:Lcom/htc/android/mail/ByteString;
    :cond_1
    iget-object v4, v3, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v5, v3, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v5, v1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 434
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v4

    int-to-byte v0, v4

    goto :goto_1

    .line 460
    .end local v0           #c:I
    .end local v2           #oc:B
    :cond_4
    if-nez v3, :cond_5

    .line 464
    .end local p0
    :goto_2
    return-object p0

    .restart local p0
    :cond_5
    move-object p0, v3

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 855
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v2, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public final toString(I)Ljava/lang/String;
    .locals 1
    .parameter "from"

    .prologue
    .line 884
    iget v0, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/ByteString;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(II)Ljava/lang/String;
    .locals 7
    .parameter "from"
    .parameter "to"

    .prologue
    const/16 v6, 0x20

    .line 899
    iget v5, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int v1, v5, p2

    .line 900
    .local v1, end:I
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 901
    .local v0, bytes:[B
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 902
    .local v3, offset:I
    add-int v2, v3, p1

    .line 904
    .local v2, index:I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v5, v0, v2

    if-gt v5, v6, :cond_0

    .line 905
    add-int/lit8 p1, p1, 0x1

    .line 906
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    :cond_0
    add-int v4, v3, p1

    .line 911
    .local v4, start:I
    add-int/lit8 v2, v1, -0x1

    .line 913
    :goto_1
    if-le v2, v4, :cond_1

    aget-byte v5, v0, v2

    if-gt v5, v6, :cond_1

    .line 914
    add-int/lit8 p2, p2, -0x1

    .line 915
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 918
    :cond_1
    if-ne p1, p2, :cond_2

    .line 919
    const-string v5, ""

    .line 922
    :goto_2
    return-object v5

    :cond_2
    new-instance v5, Ljava/lang/String;

    sub-int v6, p2, p1

    invoke-direct {v5, v0, p1, v6}, Ljava/lang/String;-><init>([BII)V

    goto :goto_2
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "charSet"

    .prologue
    .line 868
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v4, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    invoke-direct {v1, v2, v3, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :goto_0
    return-object v1

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final trim()Lcom/htc/android/mail/ByteString;
    .locals 0

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteString;->trimLeft()Lcom/htc/android/mail/ByteString;

    .line 573
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteString;->trimRight()Lcom/htc/android/mail/ByteString;

    .line 575
    return-object p0
.end method

.method public final trimCRLFRight()Lcom/htc/android/mail/ByteString;
    .locals 5

    .prologue
    .line 540
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v4, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int v1, v3, v4

    .line 541
    .local v1, end:I
    add-int/lit8 v2, v1, -0x1

    .line 542
    .local v2, index:I
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 544
    .local v0, bytes:[B
    :goto_0
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    if-le v2, v3, :cond_1

    aget-byte v3, v0, v2

    const/16 v4, 0x13

    if-eq v3, v4, :cond_0

    aget-byte v3, v0, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 545
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 546
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    goto :goto_0

    .line 549
    :cond_1
    return-object p0
.end method

.method public final trimHeader()Lcom/htc/android/mail/ByteString;
    .locals 0

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteString;->trimLeftWithoutSpace()Lcom/htc/android/mail/ByteString;

    .line 559
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteString;->trimRightWithoutSpace()Lcom/htc/android/mail/ByteString;

    .line 561
    return-object p0
.end method

.method public final trimLeft()Lcom/htc/android/mail/ByteString;
    .locals 5

    .prologue
    .line 474
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v4, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int v1, v3, v4

    .line 475
    .local v1, end:I
    iget v2, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 476
    .local v2, index:I
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 478
    .local v0, bytes:[B
    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-gt v3, v4, :cond_0

    .line 479
    add-int/lit8 v2, v2, 0x1

    .line 480
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 481
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    goto :goto_0

    .line 484
    :cond_0
    return-object p0
.end method

.method public final trimLeftWithoutSpace()Lcom/htc/android/mail/ByteString;
    .locals 5

    .prologue
    .line 488
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v4, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int v1, v3, v4

    .line 489
    .local v1, end:I
    iget v2, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 490
    .local v2, index:I
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 492
    .local v0, bytes:[B
    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ge v3, v4, :cond_0

    .line 493
    add-int/lit8 v2, v2, 0x1

    .line 494
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    .line 495
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    goto :goto_0

    .line 498
    :cond_0
    return-object p0
.end method

.method public final trimRight()Lcom/htc/android/mail/ByteString;
    .locals 5

    .prologue
    .line 508
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v4, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int v1, v3, v4

    .line 509
    .local v1, end:I
    add-int/lit8 v2, v1, -0x1

    .line 510
    .local v2, index:I
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 512
    .local v0, bytes:[B
    :goto_0
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    if-le v2, v3, :cond_0

    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-gt v3, v4, :cond_0

    .line 513
    add-int/lit8 v2, v2, -0x1

    .line 514
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    goto :goto_0

    .line 517
    :cond_0
    return-object p0
.end method

.method public final trimRightWithoutSpace()Lcom/htc/android/mail/ByteString;
    .locals 5

    .prologue
    .line 521
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    iget v4, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int v1, v3, v4

    .line 522
    .local v1, end:I
    add-int/lit8 v2, v1, -0x1

    .line 523
    .local v2, index:I
    iget-object v0, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    .line 525
    .local v0, bytes:[B
    :goto_0
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    if-le v2, v3, :cond_0

    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ge v3, v4, :cond_0

    .line 526
    add-int/lit8 v2, v2, -0x1

    .line 527
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    goto :goto_0

    .line 530
    :cond_0
    return-object p0
.end method

.method public final unescape()V
    .locals 5

    .prologue
    .line 735
    const/4 v2, 0x0

    .line 737
    .local v2, lastWasSlash:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/android/mail/ByteString;->mLength:I

    if-ge v1, v3, :cond_2

    .line 738
    iget-object v3, p0, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v4, p0, Lcom/htc/android/mail/ByteString;->mOffset:I

    add-int/2addr v4, v1

    aget-byte v0, v3, v4

    .line 740
    .local v0, b:B
    const/16 v3, 0x5c

    if-eq v0, v3, :cond_0

    .line 741
    const/4 v2, 0x0

    .line 737
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_0
    if-eqz v2, :cond_1

    .line 747
    const/4 v2, 0x0

    goto :goto_1

    .line 750
    :cond_1
    const/4 v2, 0x1

    .line 751
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ByteString;->delete(I)V

    goto :goto_1

    .line 754
    .end local v0           #b:B
    :cond_2
    return-void
.end method

.method public final unfoldLine(Lcom/htc/android/mail/ByteString;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 621
    iget v2, p1, Lcom/htc/android/mail/ByteString;->mLength:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 635
    :cond_0
    :goto_0
    return v1

    .line 625
    :cond_1
    iget-object v2, p1, Lcom/htc/android/mail/ByteString;->mStorage:[B

    iget v3, p1, Lcom/htc/android/mail/ByteString;->mOffset:I

    aget-byte v0, v2, v3

    .line 627
    .local v0, b:B
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 631
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/ByteString;->trimRight()Lcom/htc/android/mail/ByteString;

    .line 632
    invoke-virtual {p1}, Lcom/htc/android/mail/ByteString;->collapseWhitespaceLeft()Lcom/htc/android/mail/ByteString;

    .line 633
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ByteString;->concat(Lcom/htc/android/mail/ByteString;)Lcom/htc/android/mail/ByteString;

    .line 635
    const/4 v1, 0x1

    goto :goto_0
.end method
