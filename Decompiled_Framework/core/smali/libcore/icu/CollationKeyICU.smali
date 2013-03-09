.class public final Llibcore/icu/CollationKeyICU;
.super Ljava/text/CollationKey;
.source "CollationKeyICU.java"


# instance fields
.field private final bytes:[B

.field private hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/CollationKey;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/text/CollationKey;

    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/text/CollationKey;)I
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    instance-of v8, p1, Llibcore/icu/CollationKeyICU;

    if-eqz v8, :cond_3

    check-cast p1, Llibcore/icu/CollationKeyICU;

    iget-object v2, p1, Llibcore/icu/CollationKeyICU;->bytes:[B

    :goto_0
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v8, :cond_0

    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v8, v8

    if-nez v8, :cond_4

    :cond_0
    if-eqz v2, :cond_1

    array-length v6, v2

    if-nez v6, :cond_2

    :cond_1
    move v5, v7

    :cond_2
    :goto_1
    return v5

    :cond_3
    invoke-virtual {p1}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v2

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    array-length v8, v2

    if-nez v8, :cond_6

    :cond_5
    move v5, v6

    goto :goto_1

    :cond_6
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v8, v8

    array-length v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_8

    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    aget-byte v8, v8, v1

    and-int/lit16 v3, v8, 0xff

    aget-byte v8, v2, v1

    and-int/lit16 v4, v8, 0xff

    if-lt v3, v4, :cond_2

    if-le v3, v4, :cond_7

    move v5, v6

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v8, v8

    array-length v9, v2

    if-lt v8, v9, :cond_2

    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v5, v5

    array-length v8, v2

    if-le v5, v8, :cond_9

    move v5, v6

    goto :goto_1

    :cond_9
    move v5, v7

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ljava/text/CollationKey;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/text/CollationKey;

    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    if-nez v3, :cond_1

    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v3, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v2, v3

    add-int/lit8 v3, v2, -0x20

    div-int/lit8 v3, v3, 0x20

    add-int/lit8 v1, v3, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    mul-int/lit8 v3, v3, 0x25

    iget-object v4, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    :cond_1
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    return v3
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method
