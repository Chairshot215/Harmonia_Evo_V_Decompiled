.class public Lgnu/bytecode/StackMapTableAttr;
.super Lgnu/bytecode/MiscAttr;
.source "StackMapTableAttr.java"


# static fields
.field public static compressStackMapTable:Z


# instance fields
.field countLocals:I

.field countStack:I

.field encodedLocals:[I

.field encodedStack:[I

.field numEntries:I

.field prevPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    const-string v0, "StackMapTable"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 24
    invoke-virtual {p0, v2}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 25
    return-void
.end method

.method public constructor <init>([BLgnu/bytecode/CodeAttr;)V
    .locals 3
    .parameter "data"
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    .line 30
    const-string v0, "StackMapTable"

    array-length v1, p1

    invoke-direct {p0, v0, p1, v2, v1}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 31
    invoke-virtual {p0, p2}, Lgnu/bytecode/StackMapTableAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 32
    invoke-virtual {p0, v2}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    .line 33
    return-void
.end method

.method static reallocBuffer([II)[I
    .locals 3
    .parameter "buffer"
    .parameter "needed"

    .prologue
    const/4 v2, 0x0

    .line 258
    if-nez p0, :cond_1

    .line 259
    add-int/lit8 v1, p1, 0xa

    new-array p0, v1, [I

    .line 266
    :cond_0
    :goto_0
    return-object p0

    .line 260
    :cond_1
    array-length v1, p0

    if-le p1, v1, :cond_0

    .line 262
    add-int/lit8 v1, p1, 0xa

    new-array v0, v1, [I

    .line 263
    .local v0, tmp:[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public emitStackMapEntry(Lgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)V
    .locals 24
    .parameter "label"
    .parameter "code"

    .prologue
    .line 100
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    const/16 v21, 0x1

    sub-int v13, v20, v21

    .line 101
    .local v13, offset_delta:I
    const/4 v11, 0x0

    .line 102
    .local v11, matchingLocals:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move v15, v0

    .line 103
    .local v15, rawLocalsCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move v0, v15

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v20, v20, v15

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 106
    .local v18, tmp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    .line 109
    .end local v18           #tmp:[I
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v16, v0

    .line 110
    .local v16, rawStackCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v20, v20, v16

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 113
    .restart local v18       #tmp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    .line 116
    .end local v18           #tmp:[I
    :cond_1
    const/16 v19, 0x0

    .line 117
    .local v19, unchangedLocals:I
    const/4 v5, 0x0

    .line 118
    .local v5, curLocalsCount:I
    const/4 v9, 0x0

    .local v9, i:I
    move v6, v5

    .end local v5           #curLocalsCount:I
    .local v6, curLocalsCount:I
    :goto_0
    if-ge v9, v15, :cond_10

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    aget v14, v20, v6

    .line 121
    .local v14, prevType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v12

    .line 123
    .local v12, nextType:I
    if-ne v14, v12, :cond_2

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_2

    .line 124
    add-int/lit8 v19, v6, 0x1

    .line 125
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #curLocalsCount:I
    .restart local v5       #curLocalsCount:I
    aput v12, v20, v6

    .line 126
    const/16 v20, 0x3

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x4

    move v0, v12

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 127
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 118
    :cond_4
    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5           #curLocalsCount:I
    .restart local v6       #curLocalsCount:I
    goto :goto_0

    .line 129
    .end local v6           #curLocalsCount:I
    .end local v12           #nextType:I
    .end local v14           #prevType:I
    .restart local v5       #curLocalsCount:I
    :goto_1
    if-lez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    sub-int v21, v5, v21

    aget v20, v20, v21

    if-nez v20, :cond_5

    .line 130
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 131
    :cond_5
    const/4 v7, 0x0

    .line 132
    .local v7, curStackCount:I
    const/4 v9, 0x0

    move v8, v7

    .end local v7           #curStackCount:I
    .local v8, curStackCount:I
    :goto_2
    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    aget v14, v20, v8

    .line 135
    .restart local v14       #prevType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    aget-object v17, v20, v9

    .line 136
    .local v17, t:Lgnu/bytecode/Type;
    sget-object v20, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 137
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    add-int/lit8 v9, v9, 0x1

    aget-object v17, v20, v9

    .line 138
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v12

    .line 139
    .restart local v12       #nextType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #curStackCount:I
    .restart local v7       #curStackCount:I
    aput v12, v20, v8

    .line 132
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7           #curStackCount:I
    .restart local v8       #curStackCount:I
    goto :goto_2

    .line 141
    .end local v12           #nextType:I
    .end local v14           #prevType:I
    .end local v17           #t:Lgnu/bytecode/Type;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v20, v0

    sub-int v10, v5, v20

    .line 142
    .local v10, localsDelta:I
    sget-boolean v20, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v20, :cond_c

    if-nez v10, :cond_c

    move v0, v5

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/16 v20, 0x1

    move v0, v8

    move/from16 v1, v20

    if-gt v0, v1, :cond_c

    .line 145
    if-nez v8, :cond_a

    .line 147
    const/16 v20, 0x3f

    move v0, v13

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    .line 148
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 195
    :cond_8
    :goto_3
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    .line 196
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    .line 197
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    .line 199
    return-void

    .line 151
    :cond_9
    const/16 v20, 0xfb

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 152
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto :goto_3

    .line 157
    :cond_a
    const/16 v20, 0x3f

    move v0, v13

    move/from16 v1, v20

    if-gt v0, v1, :cond_b

    .line 158
    add-int/lit8 v20, v13, 0x40

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 164
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    goto :goto_3

    .line 161
    :cond_b
    const/16 v20, 0xf7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 162
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto :goto_4

    .line 167
    :cond_c
    sget-boolean v20, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v20, :cond_d

    if-nez v8, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v20, v0

    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_d

    const/16 v20, -0x3

    move v0, v10

    move/from16 v1, v20

    if-lt v0, v1, :cond_d

    .line 172
    move v0, v10

    add-int/lit16 v0, v0, 0xfb

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 173
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto/16 :goto_3

    .line 175
    :cond_d
    sget-boolean v20, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v20, :cond_e

    if-nez v8, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/16 v20, 0x3

    move v0, v10

    move/from16 v1, v20

    if-gt v0, v1, :cond_e

    .line 179
    move v0, v10

    add-int/lit16 v0, v0, 0xfb

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 180
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 181
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v10, :cond_8

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    add-int v21, v19, v9

    aget v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 181
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 186
    :cond_e
    const/16 v20, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 187
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 188
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 189
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v5, :cond_f

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    aget v20, v20, v9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 189
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 191
    :cond_f
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 192
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v8, :cond_8

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    aget v20, v20, v9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 192
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .end local v5           #curLocalsCount:I
    .end local v8           #curStackCount:I
    .end local v10           #localsDelta:I
    .restart local v6       #curLocalsCount:I
    :cond_10
    move v5, v6

    .end local v6           #curLocalsCount:I
    .restart local v5       #curLocalsCount:I
    goto/16 :goto_1
.end method

.method emitVerificationType(I)V
    .locals 2
    .parameter "encoding"

    .prologue
    .line 48
    and-int/lit16 v0, p1, 0xff

    .line 49
    .local v0, tag:I
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 50
    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 51
    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {p0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 52
    :cond_0
    return-void
.end method

.method encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I
    .locals 5
    .parameter "type"
    .parameter "code"

    .prologue
    const/4 v4, 0x0

    .line 57
    if-nez p1, :cond_0

    move v3, v4

    .line 90
    :goto_0
    return v3

    .line 59
    :cond_0
    instance-of v3, p1, Lgnu/bytecode/UninitializedType;

    if-eqz v3, :cond_2

    .line 61
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/UninitializedType;

    move-object v2, v0

    .line 62
    .local v2, utype:Lgnu/bytecode/UninitializedType;
    iget-object v1, v2, Lgnu/bytecode/UninitializedType;->label:Lgnu/bytecode/Label;

    .line 63
    .local v1, label:Lgnu/bytecode/Label;
    if-nez v1, :cond_1

    .line 64
    const/4 v3, 0x6

    goto :goto_0

    .line 66
    :cond_1
    iget v3, v1, Lgnu/bytecode/Label;->position:I

    shl-int/lit8 v3, v3, 0x8

    or-int/lit8 v3, v3, 0x8

    goto :goto_0

    .line 70
    .end local v1           #label:Lgnu/bytecode/Label;
    .end local v2           #utype:Lgnu/bytecode/UninitializedType;
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 71
    instance-of v3, p1, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_3

    .line 73
    iget-object v3, p1, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v3, v4

    .line 84
    goto :goto_0

    .line 76
    :sswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 78
    :sswitch_1
    const/4 v3, 0x4

    goto :goto_0

    .line 80
    :sswitch_2
    const/4 v3, 0x2

    goto :goto_0

    .line 82
    :sswitch_3
    const/4 v3, 0x3

    goto :goto_0

    .line 87
    :cond_3
    sget-object v3, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v3, :cond_4

    .line 88
    const/4 v3, 0x5

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ObjectType;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v3

    iget v3, v3, Lgnu/bytecode/CpoolClass;->index:I

    shl-int/lit8 v3, v3, 0x8

    or-int/lit8 v3, v3, 0x7

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_3
        0x46 -> :sswitch_2
        0x49 -> :sswitch_0
        0x4a -> :sswitch_1
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method extractVerificationType(II)I
    .locals 2
    .parameter "startOffset"
    .parameter "tag"

    .prologue
    .line 248
    const/4 v1, 0x7

    if-eq p2, v1, :cond_0

    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    .line 250
    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v0

    .line 251
    .local v0, value:I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr p2, v1

    .line 253
    .end local v0           #value:I
    :cond_1
    return p2
.end method

.method extractVerificationTypes(III[I)I
    .locals 5
    .parameter "startOffset"
    .parameter "count"
    .parameter "startIndex"
    .parameter "buffer"

    .prologue
    .line 272
    move v1, p1

    .local v1, offset:I
    move v2, p3

    .line 273
    .end local p3
    .local v2, startIndex:I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_3

    .line 276
    iget v4, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v1, v4, :cond_0

    .line 277
    const/4 v0, -0x1

    .line 284
    .local v0, encoding:I
    :goto_1
    add-int/lit8 p3, v2, 0x1

    .end local v2           #startIndex:I
    .restart local p3
    aput v0, p4, v2

    move v2, p3

    .line 285
    .end local p3
    .restart local v2       #startIndex:I
    goto :goto_0

    .line 280
    .end local v0           #encoding:I
    :cond_0
    iget-object v4, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    aget-byte v3, v4, v1

    .line 281
    .local v3, tag:I
    invoke-virtual {p0, v1, v3}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationType(II)I

    move-result v0

    .line 282
    .restart local v0       #encoding:I
    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v4, 0x3

    :goto_2
    add-int/2addr v1, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 286
    .end local v0           #encoding:I
    .end local v3           #tag:I
    :cond_3
    return v1
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .locals 1

    .prologue
    .line 35
    iget-object p0, p0, Lgnu/bytecode/StackMapTableAttr;->container:Lgnu/bytecode/AttrContainer;

    .end local p0
    check-cast p0, Lgnu/bytecode/CodeAttr;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 21
    .parameter "dst"

    .prologue
    .line 325
    const-string v19, "Attribute \""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 327
    const-string v19, "\", length:"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getLength()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 329
    const-string v19, ", number of entries: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 331
    const/4 v11, 0x2

    .line 332
    .local v11, ipos:I
    const/16 v17, -0x1

    .line 333
    .local v17, pc_offset:I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v13

    .line 334
    .local v13, method:Lgnu/bytecode/Method;
    const/4 v9, 0x0

    .line 335
    .local v9, encodedTypes:[I
    invoke-virtual {v13}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x0

    :goto_0
    move-object v0, v13

    iget-object v0, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v6, v19, v20

    .line 336
    .local v6, curLocals:I
    const/4 v7, 0x0

    .line 337
    .local v7, curStack:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v19, v0

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v19, v0

    move v0, v11

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 341
    const/4 v10, -0x1

    .line 448
    :cond_0
    :goto_2
    return-void

    .line 335
    .end local v6           #curLocals:I
    .end local v7           #curStack:I
    .end local v10           #i:I
    :cond_1
    const/16 v19, 0x1

    goto :goto_0

    .line 344
    .restart local v6       #curLocals:I
    .restart local v7       #curStack:I
    .restart local v10       #i:I
    :cond_2
    add-int/lit8 v12, v11, 0x1

    .end local v11           #ipos:I
    .local v12, ipos:I
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->u1(I)I

    move-result v18

    .line 345
    .local v18, tag:I
    add-int/lit8 v17, v17, 0x1

    .line 346
    const/4 v8, -0x1

    .line 347
    .local v8, delta:I
    const/16 v19, 0x7f

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    .line 348
    and-int/lit8 v19, v18, 0x3f

    add-int v17, v17, v19

    move v11, v12

    .line 360
    .end local v12           #ipos:I
    .restart local v11       #ipos:I
    :goto_3
    const-string v19, "  offset: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 362
    const/16 v19, 0x3f

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_5

    .line 364
    const-string v19, " - same_frame"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 365
    const/4 v7, 0x0

    .line 442
    :goto_4
    if-gez v11, :cond_10

    .line 444
    const-string v19, "<ERROR - missing data>"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 349
    .end local v11           #ipos:I
    .restart local v12       #ipos:I
    :cond_3
    add-int/lit8 v19, v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 351
    const/4 v11, -0x1

    .line 352
    .end local v12           #ipos:I
    .restart local v11       #ipos:I
    goto :goto_2

    .line 356
    .end local v11           #ipos:I
    .restart local v12       #ipos:I
    :cond_4
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v8

    .line 357
    add-int v17, v17, v8

    .line 358
    add-int/lit8 v11, v12, 0x2

    .end local v12           #ipos:I
    .restart local v11       #ipos:I
    goto :goto_3

    .line 367
    :cond_5
    const/16 v19, 0x7f

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    const/16 v19, 0xf7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 369
    :cond_6
    const/16 v19, 0x7f

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    const-string v19, " - same_locals_1_stack_item_frame"

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 371
    const/16 v19, 0x1

    move-object v0, v9

    move/from16 v1, v19

    invoke-static {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v9

    .line 372
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, v19

    move/from16 v3, v20

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v11

    .line 373
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 374
    const/4 v7, 0x1

    goto :goto_4

    .line 369
    :cond_7
    const-string v19, " - same_locals_1_stack_item_frame_extended"

    goto :goto_5

    .line 376
    :cond_8
    const/16 v19, 0xf6

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    .line 378
    const-string v19, " - tag reserved for future use - "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    goto/16 :goto_2

    .line 382
    :cond_9
    const/16 v19, 0xfa

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    .line 384
    const/16 v19, 0xfb

    sub-int v5, v19, v18

    .line 385
    .local v5, count:I
    const-string v19, " - chop_frame - undefine "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 387
    const-string v19, " locals"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 388
    sub-int/2addr v6, v5

    .line 389
    const/4 v7, 0x0

    .line 390
    goto/16 :goto_4

    .line 391
    .end local v5           #count:I
    :cond_a
    const/16 v19, 0xfb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 393
    const-string v19, " - same_frame_extended"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 394
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 396
    :cond_b
    const/16 v19, 0xfe

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    .line 398
    const/16 v19, 0xfb

    sub-int v5, v18, v19

    .line 399
    .restart local v5       #count:I
    const-string v19, " - append_frame - define "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 401
    const-string v19, " more locals"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 402
    add-int v19, v6, v5

    move-object v0, v9

    move/from16 v1, v19

    invoke-static {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v9

    .line 403
    move-object/from16 v0, p0

    move v1, v11

    move v2, v5

    move v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v11

    .line 404
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v6

    move v3, v5

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 405
    add-int/2addr v6, v5

    .line 406
    const/4 v7, 0x0

    .line 407
    goto/16 :goto_4

    .line 410
    .end local v5           #count:I
    :cond_c
    add-int/lit8 v19, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d

    .line 412
    const/4 v11, -0x1

    .line 413
    goto/16 :goto_2

    .line 415
    :cond_d
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v15

    .line 416
    .local v15, num_locals:I
    add-int/lit8 v11, v11, 0x2

    .line 417
    const-string v19, " - full_frame.  Locals count: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 419
    invoke-static {v9, v15}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v9

    .line 420
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move v2, v15

    move/from16 v3, v19

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v11

    .line 421
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v19

    move v3, v15

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 422
    move v6, v15

    .line 423
    add-int/lit8 v19, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    .line 425
    const/4 v11, -0x1

    .line 426
    goto/16 :goto_2

    .line 428
    :cond_e
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v16

    .line 429
    .local v16, num_stack:I
    add-int/lit8 v11, v11, 0x2

    .line 430
    const-string v19, "    (end of locals)"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 432
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v14

    .line 433
    .local v14, nspaces:I
    :goto_6
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_f

    .line 434
    const/16 v19, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_6

    .line 435
    :cond_f
    const-string v19, "       Stack count: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 437
    move-object v0, v9

    move/from16 v1, v16

    invoke-static {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v9

    .line 438
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, v16

    move/from16 v3, v19

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v11

    .line 439
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v19

    move/from16 v3, v16

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 440
    move/from16 v7, v16

    goto/16 :goto_4

    .line 337
    .end local v14           #nspaces:I
    .end local v15           #num_locals:I
    .end local v16           #num_stack:I
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 5
    .parameter "encoding"
    .parameter "dst"

    .prologue
    .line 203
    and-int/lit16 v2, p1, 0xff

    .line 204
    .local v2, tag:I
    packed-switch v2, :pswitch_data_0

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<bad verification type tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 207
    :pswitch_0
    const-string v3, "top/unavailable"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_1
    const-string v3, "integer"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_2
    const-string v3, "float"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :pswitch_3
    const-string v3, "double"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_4
    const-string v3, "long"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_5
    const-string v3, "null"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :pswitch_6
    const-string v3, "uninitialized this"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :pswitch_7
    shr-int/lit8 v0, p1, 0x8

    .line 229
    .local v0, index:I
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 230
    const/4 v3, 0x7

    invoke-virtual {p2, v0, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    goto :goto_0

    .line 233
    .end local v0           #index:I
    :pswitch_8
    shr-int/lit8 v1, p1, 0x8

    .line 234
    .local v1, offset:I
    const-string v3, "uninitialized object created at "

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V
    .locals 6
    .parameter "encodings"
    .parameter "startIndex"
    .parameter "count"
    .parameter "dst"

    .prologue
    const/16 v5, 0x20

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, regno:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int v4, p2, p3

    if-ge v1, v4, :cond_5

    .line 299
    aget v0, p1, v1

    .line 300
    .local v0, encoding:I
    and-int/lit16 v3, v0, 0xff

    .line 301
    .local v3, tag:I
    if-lt v1, p2, :cond_0

    .line 303
    const-string v4, "  "

    invoke-virtual {p4, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 304
    const/16 v4, 0x64

    if-lt v2, v4, :cond_3

    .line 312
    :goto_1
    invoke-virtual {p4, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 313
    const-string v4, ": "

    invoke-virtual {p4, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, v0, p4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V

    .line 315
    invoke-virtual {p4}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 317
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 318
    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 319
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 297
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_3
    const/16 v4, 0xa

    if-ge v2, v4, :cond_4

    .line 309
    invoke-virtual {p4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 310
    :cond_4
    invoke-virtual {p4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    .line 321
    .end local v0           #encoding:I
    .end local v3           #tag:I
    :cond_5
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "dstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    iget v1, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(II)V

    .line 43
    invoke-super {p0, p1}, Lgnu/bytecode/MiscAttr;->write(Ljava/io/DataOutputStream;)V

    .line 44
    return-void
.end method
