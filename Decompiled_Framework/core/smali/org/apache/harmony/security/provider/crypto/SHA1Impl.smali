.class public Lorg/apache/harmony/security/provider/crypto/SHA1Impl;
.super Ljava/lang/Object;
.source "SHA1Impl.java"

# interfaces
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeHash([I)V
    .locals 15

    const/16 v14, 0x55

    const/16 v13, 0x54

    const/16 v12, 0x53

    const/16 v11, 0x52

    const/16 v10, 0x50

    aget v0, p0, v11

    aget v1, p0, v12

    aget v2, p0, v13

    aget v3, p0, v14

    const/16 v7, 0x56

    aget v4, p0, v7

    const/16 v5, 0x10

    :goto_0
    if-ge v5, v10, :cond_0

    add-int/lit8 v7, v5, -0x3

    aget v7, p0, v7

    add-int/lit8 v8, v5, -0x8

    aget v8, p0, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v5, -0xe

    aget v8, p0, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v5, -0x10

    aget v8, p0, v8

    xor-int v6, v7, v8

    shl-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v8, v6, 0x1f

    or-int/2addr v7, v8

    aput v7, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v7, 0x14

    if-ge v5, v7, :cond_1

    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    xor-int/lit8 v9, v1, -0x1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int v6, v7, v8

    move v4, v3

    move v3, v2

    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    move v1, v0

    move v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/16 v5, 0x14

    :goto_2
    const/16 v7, 0x28

    if-ge v5, v7, :cond_2

    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int v6, v7, v8

    move v4, v3

    move v3, v2

    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    move v1, v0

    move v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/16 v5, 0x28

    :goto_3
    const/16 v7, 0x3c

    if-ge v5, v7, :cond_3

    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, -0x70e44324

    add-int/2addr v8, v9

    add-int v6, v7, v8

    move v4, v3

    move v3, v2

    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    move v1, v0

    move v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/16 v5, 0x3c

    :goto_4
    if-ge v5, v10, :cond_4

    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, -0x359d3e2a

    add-int/2addr v8, v9

    add-int v6, v7, v8

    move v4, v3

    move v3, v2

    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    move v1, v0

    move v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    aget v7, p0, v11

    add-int/2addr v7, v0

    aput v7, p0, v11

    aget v7, p0, v12

    add-int/2addr v7, v1

    aput v7, p0, v12

    aget v7, p0, v13

    add-int/2addr v7, v2

    aput v7, p0, v13

    aget v7, p0, v14

    add-int/2addr v7, v3

    aput v7, p0, v14

    const/16 v7, 0x56

    aget v8, p0, v7

    add-int/2addr v8, v4

    aput v8, p0, v7

    return-void
.end method

.method static updateHash([I[BII)V
    .locals 11

    const/16 v8, 0x51

    aget v2, p0, v8

    move v1, p2

    shr-int/lit8 v7, v2, 0x2

    and-int/lit8 v0, v2, 0x3

    const/16 v8, 0x51

    add-int v9, v2, p3

    sub-int/2addr v9, p2

    add-int/lit8 v9, v9, 0x1

    and-int/lit8 v9, v9, 0x3f

    aput v9, p0, v8

    if-eqz v0, :cond_3

    :goto_0
    if-gt v1, p3, :cond_0

    const/4 v8, 0x4

    if-ge v0, v8, :cond_0

    aget v8, p0, v7

    aget-byte v9, p1, v1

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x3

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, p0, v7

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x4

    if-ne v0, v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x10

    if-ne v7, v8, :cond_1

    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    const/4 v7, 0x0

    :cond_1
    if-le v1, p3, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    sub-int v8, p3, v1

    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v4, v8, 0x2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, p0, v7

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x10

    if-ge v7, v8, :cond_4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    sub-int v8, p3, v1

    add-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_2

    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v6, v8, 0x18

    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v6, v8

    const/4 v8, 0x2

    if-eq v5, v8, :cond_6

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    :cond_6
    aput v6, p0, v7

    goto :goto_1
.end method
