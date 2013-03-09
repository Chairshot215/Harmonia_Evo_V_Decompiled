.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"


# static fields
.field static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private count:I

.field private shared:Z

.field private value:[C


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iput-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->_getChars(II[CI)V

    return-void
.end method

.method private enlargeBuffer(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x2

    if-le p1, v0, :cond_0

    :goto_0
    new-array v1, p1, [C

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 2

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v0, v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method private move(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, v3

    if-lt v2, p1, :cond_1

    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p2, p1

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v2

    :goto_1
    new-array v1, v0, [C

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v5, v1, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p2, p1

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p2

    invoke-static {v2, p2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iput-boolean v5, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    :cond_1
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 3

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0
.end method


# virtual methods
.method final append0(C)V
    .locals 3

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    :cond_0
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char p1, v0, v1

    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .locals 9

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    or-int v6, p2, p3

    if-ltz v6, :cond_1

    if-gt p2, p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le p3, v6, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    :cond_2
    sub-int v3, p3, p2

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v4, v6, v3

    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v6, v6

    if-le v4, v6, :cond_5

    invoke-direct {p0, v4}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    :cond_3
    :goto_0
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_6

    check-cast p1, Ljava/lang/String;

    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, p2, p3, v6, v7}, Ljava/lang/String;->_getChars(II[CI)V

    :cond_4
    :goto_1
    iput v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-void

    :cond_5
    iget-boolean v6, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v6}, [C->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    iput-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    :cond_6
    instance-of v6, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v6, :cond_7

    move-object v5, p1

    check-cast v5, Ljava/lang/AbstractStringBuilder;

    iget-object v6, v5, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v6, p2, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_7
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    move v0, p2

    move v2, v1

    :goto_2
    if-ge v0, p3, :cond_4

    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput-char v7, v6, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_2
.end method

.method final append0(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->_getChars(II[CI)V

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0
.end method

.method final append0([C)V
    .locals 5

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v2, p1

    add-int v0, v1, v2

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-void
.end method

.method final append0([CII)V
    .locals 3

    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v0, v1, p3

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-void
.end method

.method final appendNull()V
    .locals 5

    const/16 v4, 0x6c

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v1, 0x4

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v3, 0x75

    aput-char v3, v1, v2

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v4, v1, v2

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v4, v1, v2

    return-void
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public codePointAt(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method final delete0(II)V
    .locals 4

    const/4 v3, 0x0

    if-ltz p1, :cond_4

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v2, :cond_0

    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :cond_0
    if-ne p2, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    if-le p2, p1, :cond_4

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v0, v2, p2

    if-ltz v0, :cond_2

    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, p2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_1
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v3, p2, p1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    new-array v1, v2, [C

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2
.end method

.method final deleteCharAt0(I)V
    .locals 5

    const/4 v4, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2

    :cond_1
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    if-lez v0, :cond_2

    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-void

    :cond_3
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    new-array v1, v2, [C

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 2

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    :cond_0
    return-void
.end method

.method public getChars(II[CI)V
    .locals 2

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final getValue()[C
    .locals 1

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 9

    const/4 v6, -0x1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    add-int v7, v5, p2

    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le v7, v8, :cond_2

    move v2, v6

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    move v2, p2

    const/4 v1, 0x0

    :goto_2
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v2, v7, :cond_3

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v7, v7, v2

    if-ne v7, v0, :cond_5

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    add-int v7, v5, v2

    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le v7, v8, :cond_6

    :cond_4
    move v2, v6

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v3, v2

    const/4 v4, 0x0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_8

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v7, v7, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_7

    :cond_8
    if-eq v4, v5, :cond_1

    add-int/lit8 p2, v2, 0x1

    goto :goto_1

    :cond_9
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p2, v6, :cond_a

    if-nez p2, :cond_b

    :cond_a
    move v6, p2

    :goto_3
    move v2, v6

    goto :goto_0

    :cond_b
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_3
.end method

.method final insert0(IC)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-void
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "null"

    :cond_0
    or-int v0, p1, p3

    or-int/2addr v0, p4

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1

    if-gt p3, p4, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p4, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    return-void
.end method

.method final insert0(ILjava/lang/String;)V
    .locals 3

    if-ltz p1, :cond_2

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v1, :cond_2

    if-nez p2, :cond_0

    const-string p2, "null"

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->_getChars(II[CI)V

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method final insert0(I[C)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    array-length v0, p2

    if-eqz v0, :cond_2

    array-length v0, p2

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, p2

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :cond_2
    return-void
.end method

.method final insert0(I[CII)V
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0, p4, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; chars.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 9

    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt v5, v7, :cond_9

    if-ltz p2, :cond_9

    if-lez v5, :cond_7

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v7, v5

    if-le p2, v7, :cond_0

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int p2, v7, v5

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    move v2, p2

    const/4 v1, 0x0

    :goto_1
    if-ltz v2, :cond_1

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v7, v7, v2

    if-ne v7, v0, :cond_3

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_4

    move v2, v6

    :cond_2
    :goto_2
    return v2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v3, v2

    const/4 v4, 0x0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_6

    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v7, v7, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_5

    :cond_6
    if-eq v4, v5, :cond_2

    add-int/lit8 p2, v2, -0x1

    goto :goto_0

    :cond_7
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge p2, v6, :cond_8

    move v6, p2

    :goto_3
    move v2, v6

    goto :goto_2

    :cond_8
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_3

    :cond_9
    move v2, v6

    goto :goto_2
.end method

.method public length()I
    .locals 1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 3

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v1, 0x0

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    return v0
.end method

.method final replace0(IILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    if-ltz p1, :cond_7

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v3, :cond_0

    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :cond_0
    if-le p2, p1, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v3, p2, p1

    sub-int v0, v3, v2

    if-lez v0, :cond_3

    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v5, p1, v2

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, p2

    invoke-static {v3, p2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p3, v7, v2, v3, p1}, Ljava/lang/String;->_getChars(II[CI)V

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, v0

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    new-array v1, v3, [C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v3, v7, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p1, v2

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v3, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    :cond_3
    if-gez v0, :cond_4

    neg-int v3, v0

    invoke-direct {p0, v3, p2}, Ljava/lang/AbstractStringBuilder;->move(II)V

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v3}, [C->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    iput-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    :cond_5
    if-ne p1, p2, :cond_7

    if-nez p3, :cond_6

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_6
    invoke-virtual {p0, p1, p3}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3
.end method

.method final reverse0()V
    .locals 17

    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v15, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v15, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/16 v16, 0x0

    aget-char v6, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v5, v15, v3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    div-int/lit8 v11, v15, 0x2

    :goto_1
    if-ge v9, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x1

    aget-char v7, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v3, -0x1

    aget-char v4, v15, v16

    if-eqz v2, :cond_3

    const v15, 0xdc00

    if-lt v7, v15, :cond_3

    const v15, 0xdfff

    if-gt v7, v15, :cond_3

    const v15, 0xd800

    if-lt v6, v15, :cond_3

    const v15, 0xdbff

    if-gt v6, v15, :cond_3

    const/4 v14, 0x1

    :goto_2
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    :cond_2
    if-eqz v1, :cond_4

    const v15, 0xd800

    if-lt v4, v15, :cond_4

    const v15, 0xdbff

    if-gt v4, v15, :cond_4

    const v15, 0xdc00

    if-lt v5, v15, :cond_4

    const v15, 0xdfff

    if-gt v5, v15, :cond_4

    const/4 v13, 0x1

    :goto_3
    const/4 v1, 0x1

    move v2, v1

    if-ne v14, v13, :cond_6

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v7, v15, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v3, -0x1

    aput-char v6, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v4, v15, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x1

    aput-char v5, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x2

    aget-char v6, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v3, -0x2

    aget-char v5, v15, v16

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_4
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v6, v15, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v5, v15, v9

    move v6, v7

    move v5, v4

    goto :goto_4

    :cond_6
    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v7, v15, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v5, v15, v9

    move v5, v4

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v6, v15, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v4, v15, v9

    move v6, v7

    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    and-int/lit8 v15, v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    if-eqz v2, :cond_9

    if-nez v1, :cond_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    if-eqz v2, :cond_a

    :goto_5
    aput-char v5, v15, v3

    goto/16 :goto_0

    :cond_a
    move v5, v6

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v15, v15

    new-array v12, v15, [C

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljava/lang/AbstractStringBuilder;->count:I

    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v9, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v8, v15, v9

    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    const v15, 0xd800

    if-lt v8, v15, :cond_c

    const v15, 0xdbff

    if-gt v8, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v16, v9, 0x1

    aget-char v10, v15, v16

    const v15, 0xdc00

    if-lt v10, v15, :cond_c

    const v15, 0xdfff

    if-gt v10, v15, :cond_c

    add-int/lit8 v3, v3, -0x1

    aput-char v10, v12, v3

    add-int/lit8 v9, v9, 0x1

    :cond_c
    add-int/lit8 v3, v3, -0x1

    aput-char v8, v12, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto/16 :goto_0
.end method

.method final set([CI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Llibcore/util/EmptyArray;->CHAR:[C

    :cond_0
    array-length v0, p1

    if-ge v0, p2, :cond_1

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "count out of range"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    iput-object p1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iput p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-void
.end method

.method public setCharAt(IC)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    iget-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    :cond_2
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    return-void
.end method

.method public setLength(I)V
    .locals 4

    const/4 v3, 0x0

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le p1, v1, :cond_2

    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    :cond_1
    :goto_0
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return-void

    :cond_2
    iget-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    new-array v0, v1, [C

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_0

    :cond_3
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v1, p1, :cond_1

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v2, p1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_0
.end method

.method final shareValue()[C
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ne p1, v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_1

    if-ne p1, p2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v0, v1, v2

    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    shr-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    new-instance v1, Ljava/lang/String;

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-direct {v1, v4, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public trimToSize()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    new-array v0, v1, [C

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    :cond_0
    return-void
.end method
