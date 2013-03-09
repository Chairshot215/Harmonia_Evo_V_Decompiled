.class public Lcom/android/mms/security/SHA1Impl;
.super Ljava/lang/Object;
.source "SHA1Impl.java"

# interfaces
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeHash([I)V
    .locals 15
    .parameter "arrW"

    .prologue
    const/16 v14, 0x55

    const/16 v13, 0x54

    const/16 v12, 0x53

    const/16 v11, 0x52

    const/16 v10, 0x50

    .line 77
    aget v0, p0, v11

    .line 78
    .local v0, a:I
    aget v1, p0, v12

    .line 79
    .local v1, b:I
    aget v2, p0, v13

    .line 80
    .local v2, c:I
    aget v3, p0, v14

    .line 81
    .local v3, d:I
    const/16 v7, 0x56

    aget v4, p0, v7

    .line 93
    .local v4, e:I
    const/16 v5, 0x10

    .local v5, t:I
    :goto_0
    if-ge v5, v10, :cond_0

    .line 95
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

    .line 96
    .local v6, temp:I
    shl-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v8, v6, 0x1f

    or-int/2addr v7, v8

    aput v7, p0, v5

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 99
    .end local v6           #temp:I
    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v7, 0x14

    if-ge v5, v7, :cond_1

    .line 101
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

    .line 104
    .restart local v6       #temp:I
    move v4, v3

    .line 105
    move v3, v2

    .line 106
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 107
    move v1, v0

    .line 108
    move v0, v6

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 110
    .end local v6           #temp:I
    :cond_1
    const/16 v5, 0x14

    :goto_2
    const/16 v7, 0x28

    if-ge v5, v7, :cond_2

    .line 112
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

    .line 113
    .restart local v6       #temp:I
    move v4, v3

    .line 114
    move v3, v2

    .line 115
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 116
    move v1, v0

    .line 117
    move v0, v6

    .line 110
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 119
    .end local v6           #temp:I
    :cond_2
    const/16 v5, 0x28

    :goto_3
    const/16 v7, 0x3c

    if-ge v5, v7, :cond_3

    .line 121
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

    .line 123
    .restart local v6       #temp:I
    move v4, v3

    .line 124
    move v3, v2

    .line 125
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 126
    move v1, v0

    .line 127
    move v0, v6

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 129
    .end local v6           #temp:I
    :cond_3
    const/16 v5, 0x3c

    :goto_4
    if-ge v5, v10, :cond_4

    .line 131
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

    .line 132
    .restart local v6       #temp:I
    move v4, v3

    .line 133
    move v3, v2

    .line 134
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 135
    move v1, v0

    .line 136
    move v0, v6

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 139
    .end local v6           #temp:I
    :cond_4
    aget v7, p0, v11

    add-int/2addr v7, v0

    aput v7, p0, v11

    .line 140
    aget v7, p0, v12

    add-int/2addr v7, v1

    aput v7, p0, v12

    .line 141
    aget v7, p0, v13

    add-int/2addr v7, v2

    aput v7, p0, v13

    .line 142
    aget v7, p0, v14

    add-int/2addr v7, v3

    aput v7, p0, v14

    .line 143
    const/16 v7, 0x56

    aget v8, p0, v7

    add-int/2addr v8, v4

    aput v8, p0, v7

    .line 144
    return-void
.end method

.method static updateHash([I[BII)V
    .locals 11
    .parameter "intArray"
    .parameter "byteInput"
    .parameter "fromByte"
    .parameter "toByte"

    .prologue
    .line 175
    const/16 v8, 0x51

    aget v2, p0, v8

    .line 176
    .local v2, index:I
    move v1, p2

    .line 180
    .local v1, i:I
    shr-int/lit8 v7, v2, 0x2

    .line 181
    .local v7, wordIndex:I
    and-int/lit8 v0, v2, 0x3

    .line 183
    .local v0, byteIndex:I
    const/16 v8, 0x51

    add-int v9, v2, p3

    sub-int/2addr v9, p2

    add-int/lit8 v9, v9, 0x1

    and-int/lit8 v9, v9, 0x3f

    aput v9, p0, v8

    .line 190
    if-eqz v0, :cond_3

    .line 192
    :goto_0
    if-gt v1, p3, :cond_0

    const/4 v8, 0x4

    if-ge v0, v8, :cond_0

    .line 193
    aget v8, p0, v7

    aget-byte v9, p1, v1

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x3

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, p0, v7

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    const/4 v8, 0x4

    if-ne v0, v8, :cond_1

    .line 197
    add-int/lit8 v7, v7, 0x1

    .line 198
    const/16 v8, 0x10

    if-ne v7, v8, :cond_1

    .line 200
    invoke-static {p0}, Lcom/android/mms/security/SHA1Impl;->computeHash([I)V

    .line 201
    const/4 v7, 0x0

    .line 204
    :cond_1
    if-le v1, p3, :cond_3

    .line 245
    :cond_2
    :goto_1
    return-void

    .line 211
    :cond_3
    sub-int v8, p3, v1

    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v4, v8, 0x2

    .line 212
    .local v4, maxWord:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 214
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

    .line 218
    add-int/lit8 v1, v1, 0x4

    .line 219
    add-int/lit8 v7, v7, 0x1

    .line 221
    const/16 v8, 0x10

    if-ge v7, v8, :cond_4

    .line 212
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 224
    :cond_4
    invoke-static {p0}, Lcom/android/mms/security/SHA1Impl;->computeHash([I)V

    .line 225
    const/4 v7, 0x0

    goto :goto_3

    .line 231
    :cond_5
    sub-int v8, p3, v1

    add-int/lit8 v5, v8, 0x1

    .line 232
    .local v5, nBytes:I
    if-eqz v5, :cond_2

    .line 234
    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v6, v8, 0x18

    .line 236
    .local v6, w:I
    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    .line 237
    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v6, v8

    .line 238
    const/4 v8, 0x2

    if-eq v5, v8, :cond_6

    .line 239
    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    .line 242
    :cond_6
    aput v6, p0, v7

    goto :goto_1
.end method
