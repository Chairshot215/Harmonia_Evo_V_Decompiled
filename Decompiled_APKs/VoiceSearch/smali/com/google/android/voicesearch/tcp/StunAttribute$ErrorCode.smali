.class public Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;
.super Ljava/lang/Object;
.source "StunAttribute.java"

# interfaces
.implements Lcom/google/android/voicesearch/tcp/StunAttributeData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/tcp/StunAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCode"
.end annotation


# instance fields
.field private errorCode:I

.field private errorReason:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 413
    return-void
.end method

.method private equalsErrorCode(Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 399
    iget v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    iget v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    if-ne v0, v1, :cond_0

    .line 400
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromByteArray([BII)Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;
    .locals 4
    .parameter "src"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 433
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;-><init>()V

    .line 434
    .local v0, data:Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    .line 437
    const-string v2, ""

    iput-object v2, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 439
    add-int/lit8 v1, p1, 0x4

    .local v1, i:I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asByteArray()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->getLength()I

    move-result v3

    new-array v0, v3, [B

    .line 418
    .local v0, b:[B
    aput-byte v5, v0, v5

    .line 419
    const/4 v3, 0x1

    aput-byte v5, v0, v3

    .line 420
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    div-int/lit8 v4, v4, 0x64

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 421
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    rem-int/lit8 v4, v4, 0x64

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 424
    :try_start_0
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 428
    .local v2, reasonBytes:[B
    :goto_0
    const/4 v3, 0x4

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    return-object v0

    .line 425
    .end local v2           #reasonBytes:[B
    :catch_0
    move-exception v1

    .line 426
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-array v2, v5, [B

    .restart local v2       #reasonBytes:[B
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 386
    instance-of v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;

    if-eqz v0, :cond_0

    .line 387
    check-cast p1, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->equalsErrorCode(Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;)Z

    move-result v0

    .line 389
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLength()I
    .locals 6

    .prologue
    .line 449
    :try_start_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 450
    .local v1, reasonBytes:[B
    array-length v2, v1

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    const/4 v4, 0x0

    array-length v5, v1

    rem-int/lit8 v5, v5, 0x4

    rsub-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x4

    .line 457
    .end local v1           #reasonBytes:[B
    :goto_0
    return v2

    .line 454
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 457
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
