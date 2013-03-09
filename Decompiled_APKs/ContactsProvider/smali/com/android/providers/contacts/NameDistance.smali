.class public Lcom/android/providers/contacts/NameDistance;
.super Ljava/lang/Object;
.source "NameDistance.java"


# static fields
.field private static final MIN_EXACT_PREFIX_LENGTH:I = 0x3

.field private static final WINKLER_BONUS_THRESHOLD:F = 0.7f


# instance fields
.field private final mMatchFlags1:[Z

.field private final mMatchFlags2:[Z

.field private final mMaxLength:I

.field private final mPrefixOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/NameDistance;->mPrefixOnly:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags1:[Z

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "maxLength"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/NameDistance;->mPrefixOnly:Z

    .line 48
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags1:[Z

    .line 49
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    .line 50
    return-void
.end method


# virtual methods
.method public getDistance([B[B)F
    .locals 21
    .parameter "bytes1"
    .parameter "bytes2"

    .prologue
    .line 67
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 68
    move-object/from16 v4, p1

    .line 69
    .local v4, array2:[B
    move-object/from16 v3, p2

    .line 75
    .local v3, array1:[B
    :goto_0
    array-length v10, v3

    .line 76
    .local v10, length1:I
    const/16 v18, 0x3

    move/from16 v0, v18

    if-lt v10, v0, :cond_4

    .line 77
    const/4 v14, 0x1

    .line 78
    .local v14, prefix:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 79
    aget-byte v18, v3, v7

    aget-byte v19, v4, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 80
    const/4 v14, 0x0

    .line 84
    :cond_0
    if-eqz v14, :cond_4

    .line 85
    const/high16 v9, 0x3f80

    .line 167
    .end local v7           #i:I
    .end local v14           #prefix:Z
    :cond_1
    :goto_2
    return v9

    .line 71
    .end local v3           #array1:[B
    .end local v4           #array2:[B
    .end local v10           #length1:I
    :cond_2
    move-object/from16 v4, p2

    .line 72
    .restart local v4       #array2:[B
    move-object/from16 v3, p1

    .restart local v3       #array1:[B
    goto :goto_0

    .line 78
    .restart local v7       #i:I
    .restart local v10       #length1:I
    .restart local v14       #prefix:Z
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 89
    .end local v7           #i:I
    .end local v14           #prefix:Z
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/contacts/NameDistance;->mPrefixOnly:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 90
    const/4 v9, 0x0

    goto :goto_2

    .line 93
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v10, v0, :cond_6

    .line 94
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    .line 97
    :cond_6
    array-length v11, v4

    .line 98
    .local v11, length2:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v11, v0, :cond_7

    .line 99
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/providers/contacts/NameDistance;->mMaxLength:I

    .line 102
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags1:[Z

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v10, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v11, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 105
    div-int/lit8 v18, v11, 0x2

    add-int/lit8 v15, v18, -0x1

    .line 106
    .local v15, range:I
    if-gez v15, :cond_8

    .line 107
    const/4 v15, 0x0

    .line 110
    :cond_8
    const/4 v13, 0x0

    .line 111
    .local v13, matches:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    if-ge v7, v10, :cond_d

    .line 112
    aget-byte v5, v3, v7

    .line 114
    .local v5, c1:B
    sub-int v6, v7, v15

    .line 115
    .local v6, from:I
    if-gez v6, :cond_9

    .line 116
    const/4 v6, 0x0

    .line 119
    :cond_9
    add-int v18, v7, v15

    add-int/lit8 v16, v18, 0x1

    .line 120
    .local v16, to:I
    move/from16 v0, v16

    if-le v0, v11, :cond_a

    .line 121
    move/from16 v16, v11

    .line 124
    :cond_a
    move v8, v6

    .local v8, j:I
    :goto_4
    move/from16 v0, v16

    if-ge v8, v0, :cond_b

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    move-object/from16 v18, v0

    aget-boolean v18, v18, v8

    if-nez v18, :cond_c

    aget-byte v18, v4, v8

    move/from16 v0, v18

    if-ne v5, v0, :cond_c

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags1:[Z

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-boolean v20, v19, v8

    aput-boolean v20, v18, v7

    .line 127
    add-int/lit8 v13, v13, 0x1

    .line 111
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 124
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 133
    .end local v5           #c1:B
    .end local v6           #from:I
    .end local v8           #j:I
    .end local v16           #to:I
    :cond_d
    if-nez v13, :cond_e

    .line 134
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 137
    :cond_e
    const/16 v17, 0x0

    .line 138
    .local v17, transpositions:I
    const/4 v8, 0x0

    .line 139
    .restart local v8       #j:I
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v10, :cond_12

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags1:[Z

    move-object/from16 v18, v0

    aget-boolean v18, v18, v7

    if-eqz v18, :cond_11

    .line 141
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameDistance;->mMatchFlags2:[Z

    move-object/from16 v18, v0

    aget-boolean v18, v18, v8

    if-nez v18, :cond_f

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 144
    :cond_f
    aget-byte v18, v3, v7

    aget-byte v19, v4, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 145
    add-int/lit8 v17, v17, 0x1

    .line 147
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 139
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 151
    :cond_12
    int-to-float v12, v13

    .line 152
    .local v12, m:F
    int-to-float v0, v10

    move/from16 v18, v0

    div-float v18, v12, v18

    int-to-float v0, v11

    move/from16 v19, v0

    div-float v19, v12, v19

    add-float v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v12, v19

    div-float v19, v19, v12

    add-float v18, v18, v19

    const/high16 v19, 0x4040

    div-float v9, v18, v19

    .line 154
    .local v9, jaro:F
    const v18, 0x3f333333

    cmpg-float v18, v9, v18

    if-ltz v18, :cond_1

    .line 159
    const/4 v14, 0x0

    .line 160
    .local v14, prefix:I
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v10, :cond_13

    .line 161
    aget-byte v18, p1, v7

    aget-byte v19, p2, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 167
    :cond_13
    const v18, 0x3dcccccd

    const/high16 v19, 0x3f80

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    int-to-float v0, v14

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x3f80

    sub-float v19, v19, v9

    mul-float v18, v18, v19

    add-float v9, v9, v18

    goto/16 :goto_2

    .line 164
    :cond_14
    add-int/lit8 v14, v14, 0x1

    .line 160
    add-int/lit8 v7, v7, 0x1

    goto :goto_7
.end method
