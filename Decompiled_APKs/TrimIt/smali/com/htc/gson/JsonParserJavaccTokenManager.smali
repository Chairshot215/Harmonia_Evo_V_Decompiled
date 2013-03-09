.class final Lcom/htc/gson/JsonParserJavaccTokenManager;
.super Ljava/lang/Object;
.source "JsonParserJavaccTokenManager.java"

# interfaces
.implements Lcom/htc/gson/JsonParserJavaccConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec2:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field protected input_stream:Lcom/htc/gson/SimpleCharStream;

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 384
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec0:[J

    .line 387
    new-array v0, v6, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec2:[J

    .line 974
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    .line 991
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    aput-object v3, v0, v5

    aput-object v3, v0, v7

    const/4 v1, 0x3

    aput-object v3, v0, v1

    aput-object v3, v0, v6

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NaN"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Infinity"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    const-string v2, ")]}\'\n"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "."

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 998
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "STRING_STATE"

    aput-object v1, v0, v5

    const-string v1, "ESC_STATE"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "HEX_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 1006
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    .line 1010
    new-array v0, v5, [J

    const-wide v1, 0x7fe775fe1L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoToken:[J

    .line 1013
    new-array v0, v5, [J

    const-wide/16 v1, 0x1e

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoSkip:[J

    .line 1016
    new-array v0, v5, [J

    const-wide/32 v1, 0x880000

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoMore:[J

    return-void

    .line 384
    nop

    :array_0
    .array-data 0x8
        0xfet 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 387
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 974
    :array_2
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    .line 1006
    :array_3
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lcom/htc/gson/SimpleCharStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 1020
    const/16 v0, 0x2b

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    .line 1021
    const/16 v0, 0x56

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    .line 1092
    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1093
    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->defaultLexState:I

    .line 1027
    iput-object p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    .line 1028
    return-void
.end method

.method public constructor <init>(Lcom/htc/gson/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonParserJavaccTokenManager;-><init>(Lcom/htc/gson/SimpleCharStream;)V

    .line 1033
    invoke-virtual {p0, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->SwitchTo(I)V

    .line 1034
    return-void
.end method

.method private ReInitRounds()V
    .locals 4

    .prologue
    .line 1047
    const v2, -0x7fffffff

    iput v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    .line 1048
    const/16 v0, 0x2b

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 1049
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 1050
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1211
    :goto_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 1212
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 1213
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .locals 6
    .parameter "hiByte"
    .parameter "i1"
    .parameter "i2"
    .parameter "l1"
    .parameter "l2"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 979
    packed-switch p0, :pswitch_data_0

    .line 984
    sget-object v2, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 986
    :cond_0
    :goto_0
    return v0

    .line 982
    :pswitch_0
    sget-object v2, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec2:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 986
    goto :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private jjCheckNAdd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 1205
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    aput v1, v0, p1

    .line 1207
    :cond_0
    return-void
.end method

.method private jjCheckNAddStates(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1223
    :goto_0
    sget-object v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 1224
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 1225
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0
    .parameter "state1"
    .parameter "state2"

    .prologue
    .line 1216
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 1217
    invoke-direct {p0, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 1218
    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 19
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 392
    const/4 v14, 0x0

    .line 393
    .local v14, startsAt:I
    const/16 v15, 0x2b

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 394
    const/4 v10, 0x1

    .line 395
    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 396
    const v11, 0x7fffffff

    .line 399
    .local v11, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 401
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_d

    .line 403
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v12, v15, v17

    .line 406
    .local v12, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_0

    .line 546
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v10, v14, :cond_1

    .line 763
    .end local v12           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v11, v15, :cond_3

    .line 765
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 766
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 767
    const v11, 0x7fffffff

    .line 769
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 770
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x2b

    if-ne v10, v14, :cond_1f

    .line 773
    :goto_3
    return p2

    .line 409
    .restart local v12       #l:J
    :pswitch_1
    const-wide v15, -0x400002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_4

    .line 410
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1

    .line 411
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 413
    const/16 v15, 0x11

    if-le v11, v15, :cond_2

    .line 414
    const/16 v11, 0x11

    goto :goto_1

    .line 418
    :pswitch_2
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 420
    const/4 v15, 0x6

    if-le v11, v15, :cond_5

    .line 421
    const/4 v11, 0x6

    .line 422
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 424
    :cond_6
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 425
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1

    .line 426
    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 427
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 430
    :pswitch_3
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 432
    const/4 v15, 0x6

    if-le v11, v15, :cond_8

    .line 433
    const/4 v11, 0x6

    .line 434
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 437
    :pswitch_4
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 439
    const/16 v15, 0xb

    if-le v11, v15, :cond_9

    .line 440
    const/16 v11, 0xb

    .line 441
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xa

    aput v17, v15, v16

    goto/16 :goto_1

    .line 444
    :pswitch_5
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 445
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xd

    aput v17, v15, v16

    goto/16 :goto_1

    .line 448
    :pswitch_6
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 449
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xe

    aput v17, v15, v16

    goto/16 :goto_1

    .line 452
    :pswitch_7
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 453
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xf

    aput v17, v15, v16

    goto/16 :goto_1

    .line 456
    :pswitch_8
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v15, 0xe

    if-le v11, v15, :cond_2

    .line 457
    const/16 v11, 0xe

    goto/16 :goto_1

    .line 460
    :pswitch_9
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 461
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 464
    :pswitch_a
    const-wide v15, -0x8000002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 465
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 468
    :pswitch_b
    const-wide v15, 0x808400000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 469
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 472
    :pswitch_c
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 473
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x17

    aput v17, v15, v16

    goto/16 :goto_1

    .line 476
    :pswitch_d
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 477
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x18

    aput v17, v15, v16

    goto/16 :goto_1

    .line 480
    :pswitch_e
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 481
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x19

    aput v17, v15, v16

    goto/16 :goto_1

    .line 484
    :pswitch_f
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 485
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 488
    :pswitch_10
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/16 v15, 0x10

    if-le v11, v15, :cond_2

    .line 489
    const/16 v11, 0x10

    goto/16 :goto_1

    .line 492
    :pswitch_11
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 493
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 496
    :pswitch_12
    const-wide v15, -0x400002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 497
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 500
    :pswitch_13
    const-wide v15, 0x808400000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 501
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 504
    :pswitch_14
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 505
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x22

    aput v17, v15, v16

    goto/16 :goto_1

    .line 508
    :pswitch_15
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 509
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x23

    aput v17, v15, v16

    goto/16 :goto_1

    .line 512
    :pswitch_16
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 513
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x24

    aput v17, v15, v16

    goto/16 :goto_1

    .line 516
    :pswitch_17
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 517
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 520
    :pswitch_18
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/16 v15, 0x11

    if-le v11, v15, :cond_2

    .line 521
    const/16 v11, 0x11

    goto/16 :goto_1

    .line 524
    :pswitch_19
    const-wide v15, 0x3ff280000000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 526
    const/4 v15, 0x5

    if-le v11, v15, :cond_a

    .line 527
    const/4 v11, 0x5

    .line 528
    :cond_a
    const/16 v15, 0x29

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 531
    :pswitch_1a
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 533
    const/4 v15, 0x5

    if-le v11, v15, :cond_b

    .line 534
    const/4 v11, 0x5

    .line 535
    :cond_b
    const/16 v15, 0x29

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 538
    :pswitch_1b
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 540
    const/16 v15, 0xc

    if-le v11, v15, :cond_c

    .line 541
    const/16 v11, 0xc

    .line 542
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2a

    aput v17, v15, v16

    goto/16 :goto_1

    .line 548
    .end local v12           #l:J
    :cond_d
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_1c

    .line 550
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 553
    .restart local v12       #l:J
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_1

    .line 737
    :cond_f
    :goto_4
    :pswitch_1c
    if-ne v10, v14, :cond_e

    goto/16 :goto_2

    .line 556
    :pswitch_1d
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_11

    .line 557
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    .line 560
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 561
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1f

    aput v17, v15, v16

    goto :goto_4

    .line 558
    :cond_11
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x20

    aput v17, v15, v16

    goto :goto_5

    .line 564
    :pswitch_1e
    const-wide v15, 0x7ffffde87ffffdeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_14

    .line 566
    const/16 v15, 0xb

    if-le v11, v15, :cond_12

    .line 567
    const/16 v11, 0xb

    .line 568
    :cond_12
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 578
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 579
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x7

    aput v17, v15, v16

    goto/16 :goto_4

    .line 570
    :cond_14
    const-wide v15, 0x2000000020L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_16

    .line 572
    const/16 v15, 0xc

    if-le v11, v15, :cond_15

    .line 573
    const/16 v11, 0xc

    .line 574
    :cond_15
    const/16 v15, 0x28

    const/16 v16, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_6

    .line 576
    :cond_16
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 577
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xb

    aput v17, v15, v16

    goto :goto_6

    .line 580
    :cond_17
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x74

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 581
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x3

    aput v17, v15, v16

    goto/16 :goto_4

    .line 584
    :pswitch_1f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x65

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const/16 v15, 0xa

    if-le v11, v15, :cond_f

    .line 585
    const/16 v11, 0xa

    goto/16 :goto_4

    .line 588
    :pswitch_20
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 589
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 592
    :pswitch_21
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x72

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 593
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2

    aput v17, v15, v16

    goto/16 :goto_4

    .line 596
    :pswitch_22
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x73

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 597
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 600
    :pswitch_23
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x6c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 601
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x5

    aput v17, v15, v16

    goto/16 :goto_4

    .line 604
    :pswitch_24
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x61

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 605
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x6

    aput v17, v15, v16

    goto/16 :goto_4

    .line 608
    :pswitch_25
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 609
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x7

    aput v17, v15, v16

    goto/16 :goto_4

    .line 612
    :pswitch_26
    const-wide v15, 0x7ffffde87ffffdeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 614
    const/16 v15, 0xb

    if-le v11, v15, :cond_18

    .line 615
    const/16 v11, 0xb

    .line 616
    :cond_18
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 619
    :pswitch_27
    const-wide v15, 0x7fffffe87fffffeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 621
    const/16 v15, 0xb

    if-le v11, v15, :cond_19

    .line 622
    const/16 v11, 0xb

    .line 623
    :cond_19
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 626
    :pswitch_28
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 627
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xc

    aput v17, v15, v16

    goto/16 :goto_4

    .line 630
    :pswitch_29
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 631
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xd

    aput v17, v15, v16

    goto/16 :goto_4

    .line 634
    :pswitch_2a
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 635
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xe

    aput v17, v15, v16

    goto/16 :goto_4

    .line 638
    :pswitch_2b
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 639
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xf

    aput v17, v15, v16

    goto/16 :goto_4

    .line 642
    :pswitch_2c
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/16 v15, 0xe

    if-le v11, v15, :cond_f

    .line 643
    const/16 v11, 0xe

    goto/16 :goto_4

    .line 646
    :pswitch_2d
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 647
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xb

    aput v17, v15, v16

    goto/16 :goto_4

    .line 650
    :pswitch_2e
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 651
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 654
    :pswitch_2f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x14

    aput v17, v15, v16

    goto/16 :goto_4

    .line 658
    :pswitch_30
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 659
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 662
    :pswitch_31
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x16

    aput v17, v15, v16

    goto/16 :goto_4

    .line 666
    :pswitch_32
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 667
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x17

    aput v17, v15, v16

    goto/16 :goto_4

    .line 670
    :pswitch_33
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 671
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x18

    aput v17, v15, v16

    goto/16 :goto_4

    .line 674
    :pswitch_34
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x19

    aput v17, v15, v16

    goto/16 :goto_4

    .line 678
    :pswitch_35
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 679
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 682
    :pswitch_36
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 683
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x15

    aput v17, v15, v16

    goto/16 :goto_4

    .line 686
    :pswitch_37
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 687
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 690
    :pswitch_38
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1f

    aput v17, v15, v16

    goto/16 :goto_4

    .line 694
    :pswitch_39
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 695
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 698
    :pswitch_3a
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 699
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x21

    aput v17, v15, v16

    goto/16 :goto_4

    .line 702
    :pswitch_3b
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x22

    aput v17, v15, v16

    goto/16 :goto_4

    .line 706
    :pswitch_3c
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 707
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x23

    aput v17, v15, v16

    goto/16 :goto_4

    .line 710
    :pswitch_3d
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 711
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x24

    aput v17, v15, v16

    goto/16 :goto_4

    .line 714
    :pswitch_3e
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 715
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 718
    :pswitch_3f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 719
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x20

    aput v17, v15, v16

    goto/16 :goto_4

    .line 722
    :pswitch_40
    const-wide v15, 0x2000000020L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 724
    const/16 v15, 0xc

    if-le v11, v15, :cond_1a

    .line 725
    const/16 v11, 0xc

    .line 726
    :cond_1a
    const/16 v15, 0x28

    const/16 v16, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_4

    .line 729
    :pswitch_41
    const-wide v15, 0x7fffffe87fffffeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 731
    const/16 v15, 0xc

    if-le v11, v15, :cond_1b

    .line 732
    const/16 v11, 0xc

    .line 733
    :cond_1b
    const/16 v15, 0x2a

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 741
    .end local v12           #l:J
    :cond_1c
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v2, v15, 0x8

    .line 742
    .local v2, hiByte:I
    shr-int/lit8 v3, v2, 0x6

    .line 743
    .local v3, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v2, 0x3f

    shl-long v5, v15, v17

    .line 744
    .local v5, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v4, v15, 0x6

    .line 745
    .local v4, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v7, v15, v17

    .line 748
    .local v7, l2:J
    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    sparse-switch v15, :sswitch_data_0

    .line 761
    :cond_1e
    :goto_7
    if-ne v10, v14, :cond_1d

    goto/16 :goto_2

    .line 752
    :sswitch_0
    invoke-static/range {v2 .. v8}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 753
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_7

    .line 756
    :sswitch_1
    invoke-static/range {v2 .. v8}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 757
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjAddStates(II)V

    goto :goto_7

    .line 772
    .end local v2           #hiByte:I
    .end local v3           #i1:I
    .end local v4           #i2:I
    .end local v5           #l1:J
    .end local v7           #l2:J
    :cond_1f
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 773
    :catch_0
    move-exception v9

    .local v9, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1
    .end packed-switch

    .line 553
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_1e
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_1c
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_1c
        :pswitch_1c
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_1c
        :pswitch_40
        :pswitch_1c
        :pswitch_1c
        :pswitch_41
        :pswitch_1d
    .end packed-switch

    .line 748
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x1d -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private jjMoveNfa_1(II)I
    .locals 19
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 891
    const/4 v14, 0x0

    .line 892
    .local v14, startsAt:I
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 893
    const/4 v10, 0x1

    .line 894
    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 895
    const v11, 0x7fffffff

    .line 898
    .local v11, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 900
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 902
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v12, v15, v17

    .line 905
    .local v12, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_0

    .line 925
    :cond_2
    :goto_1
    if-ne v10, v14, :cond_1

    .line 961
    .end local v12           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v11, v15, :cond_3

    .line 963
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 964
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 965
    const v11, 0x7fffffff

    .line 967
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 968
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x2

    if-ne v10, v14, :cond_b

    .line 971
    :goto_3
    return p2

    .line 908
    .restart local v12       #l:J
    :pswitch_0
    const-wide v15, -0x400000001L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_4

    .line 910
    const/16 v15, 0x15

    if-le v11, v15, :cond_2

    .line 911
    const/16 v11, 0x15

    goto :goto_1

    .line 913
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 915
    const/16 v15, 0x14

    if-le v11, v15, :cond_2

    .line 916
    const/16 v11, 0x14

    goto :goto_1

    .line 920
    :pswitch_1
    const-wide v15, -0x400000001L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 921
    const/16 v11, 0x15

    goto :goto_1

    .line 927
    .end local v12           #l:J
    :cond_5
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 929
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 932
    .restart local v12       #l:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_1

    .line 940
    :cond_7
    :goto_4
    if-ne v10, v14, :cond_6

    goto :goto_2

    .line 935
    :pswitch_2
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_7

    .line 936
    const/16 v11, 0x15

    goto :goto_4

    .line 944
    .end local v12           #l:J
    :cond_8
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v2, v15, 0x8

    .line 945
    .local v2, hiByte:I
    shr-int/lit8 v3, v2, 0x6

    .line 946
    .local v3, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v2, 0x3f

    shl-long v5, v15, v17

    .line 947
    .local v5, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v4, v15, 0x6

    .line 948
    .local v4, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v7, v15, v17

    .line 951
    .local v7, l2:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_2

    .line 959
    :cond_a
    :goto_5
    if-ne v10, v14, :cond_9

    goto/16 :goto_2

    .line 954
    :pswitch_3
    invoke-static/range {v2 .. v8}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x15

    if-le v11, v15, :cond_a

    .line 955
    const/16 v11, 0x15

    goto :goto_5

    .line 970
    .end local v2           #hiByte:I
    .end local v3           #i1:I
    .end local v4           #i2:I
    .end local v5           #l1:J
    .end local v7           #l2:J
    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 971
    :catch_0
    move-exception v9

    .local v9, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 905
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 932
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 951
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private jjMoveNfa_2(II)I
    .locals 19
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 800
    const/4 v14, 0x0

    .line 801
    .local v14, startsAt:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 802
    const/4 v4, 0x1

    .line 803
    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 804
    const v7, 0x7fffffff

    .line 807
    .local v7, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 809
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 811
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v8, v15, v17

    .line 814
    .local v8, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_0

    .line 822
    :cond_2
    :goto_1
    if-ne v4, v14, :cond_1

    .line 854
    .end local v8           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v7, v15, :cond_3

    .line 856
    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 857
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 858
    const v7, 0x7fffffff

    .line 860
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 861
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x1

    if-ne v4, v14, :cond_9

    .line 864
    :goto_3
    return p2

    .line 817
    .restart local v8       #l:J
    :pswitch_0
    const-wide v15, 0x800400000000L

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 818
    const/16 v7, 0x16

    goto :goto_1

    .line 824
    .end local v8           #l:J
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 826
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v8, v15, v17

    .line 829
    .restart local v8       #l:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_1

    .line 837
    :cond_6
    :goto_4
    if-ne v4, v14, :cond_5

    goto :goto_2

    .line 832
    :pswitch_1
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 833
    const/16 v7, 0x16

    goto :goto_4

    .line 841
    .end local v8           #l:J
    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v3, v15, 0x8

    .line 842
    .local v3, hiByte:I
    shr-int/lit8 v5, v3, 0x6

    .line 843
    .local v5, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v3, 0x3f

    shl-long v10, v15, v17

    .line 844
    .local v10, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v6, v15, 0x6

    .line 845
    .local v6, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 848
    .local v12, l2:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    .line 852
    if-ne v4, v14, :cond_8

    goto/16 :goto_2

    .line 863
    .end local v3           #hiByte:I
    .end local v5           #i1:I
    .end local v6           #i2:I
    .end local v10           #l1:J
    .end local v12           #l2:J
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 864
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    goto :goto_3

    .line 814
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 829
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private jjMoveNfa_3(II)I
    .locals 19
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 22
    const/4 v14, 0x0

    .line 23
    .local v14, startsAt:I
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 24
    const/4 v4, 0x1

    .line 25
    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 26
    const v7, 0x7fffffff

    .line 29
    .local v7, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 31
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 33
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v8, v15, v17

    .line 36
    .local v8, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_0

    .line 56
    :cond_2
    :goto_1
    if-ne v4, v14, :cond_1

    .line 100
    .end local v8           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v7, v15, :cond_3

    .line 102
    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 103
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 104
    const v7, 0x7fffffff

    .line 106
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 107
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x4

    if-ne v4, v14, :cond_9

    .line 110
    :goto_3
    return p2

    .line 39
    .restart local v8       #l:J
    :pswitch_0
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 40
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1

    aput v17, v15, v16

    goto :goto_1

    .line 43
    :pswitch_1
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 44
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2

    aput v17, v15, v16

    goto :goto_1

    .line 47
    :pswitch_2
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 48
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x3

    aput v17, v15, v16

    goto/16 :goto_1

    .line 51
    :pswitch_3
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v15, 0x19

    if-le v7, v15, :cond_2

    .line 52
    const/16 v7, 0x19

    goto/16 :goto_1

    .line 58
    .end local v8           #l:J
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 60
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v8, v15, v17

    .line 63
    .restart local v8       #l:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_1

    .line 83
    :cond_6
    :goto_4
    if-ne v4, v14, :cond_5

    goto/16 :goto_2

    .line 66
    :pswitch_4
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 67
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1

    aput v17, v15, v16

    goto :goto_4

    .line 70
    :pswitch_5
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 71
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2

    aput v17, v15, v16

    goto :goto_4

    .line 74
    :pswitch_6
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 75
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x3

    aput v17, v15, v16

    goto :goto_4

    .line 78
    :pswitch_7
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    const/16 v15, 0x19

    if-le v7, v15, :cond_6

    .line 79
    const/16 v7, 0x19

    goto :goto_4

    .line 87
    .end local v8           #l:J
    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v3, v15, 0x8

    .line 88
    .local v3, hiByte:I
    shr-int/lit8 v5, v3, 0x6

    .line 89
    .local v5, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v3, 0x3f

    shl-long v10, v15, v17

    .line 90
    .local v10, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v6, v15, 0x6

    .line 91
    .local v6, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 94
    .local v12, l2:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    .line 98
    if-ne v4, v14, :cond_8

    goto/16 :goto_2

    .line 109
    .end local v3           #hiByte:I
    .end local v5           #i1:I
    .end local v6           #i2:I
    .end local v10           #l1:J
    .end local v12           #l2:J
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 63
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 223
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 197
    :sswitch_0
    const/16 v0, 0x12

    const/16 v1, 0x2b

    invoke-direct {p0, v2, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 199
    :sswitch_1
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 201
    :sswitch_2
    const/16 v0, 0x1d

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 203
    :sswitch_3
    const/16 v0, 0x21

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 205
    :sswitch_4
    const/16 v0, 0x22

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 207
    :sswitch_5
    const/16 v0, 0x1e

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 209
    :sswitch_6
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 211
    :sswitch_7
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 213
    :sswitch_8
    const/16 v0, 0x1f

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 215
    :sswitch_9
    const/16 v0, 0x20

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 217
    :sswitch_a
    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 219
    :sswitch_b
    const/16 v0, 0x1b

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 221
    :sswitch_c
    const/16 v0, 0x1c

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2c -> :sswitch_2
        0x2d -> :sswitch_3
        0x2e -> :sswitch_4
        0x3a -> :sswitch_5
        0x49 -> :sswitch_6
        0x4e -> :sswitch_7
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x6e -> :sswitch_a
        0x7b -> :sswitch_b
        0x7d -> :sswitch_c
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 881
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 886
    invoke-direct {p0, v1, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 884
    :pswitch_0
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 881
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 790
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 795
    invoke-direct {p0, v1, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 793
    :pswitch_0
    const/16 v0, 0x17

    invoke-direct {p0, v1, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 790
    :pswitch_data_0
    .packed-switch 0x75
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa1_0(J)I
    .locals 3
    .parameter "active0"

    .prologue
    const/4 v2, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    iget-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_0

    .line 246
    invoke-direct {p0, v2, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v2, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    .line 231
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 238
    :sswitch_1
    const-wide/16 v1, 0x100

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 240
    :sswitch_2
    const-wide/16 v1, 0x200

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 242
    :sswitch_3
    const-wide/16 v1, 0x80

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x5d -> :sswitch_0
        0x61 -> :sswitch_1
        0x6e -> :sswitch_2
        0x75 -> :sswitch_3
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa2_0(JJ)I
    .locals 7
    .parameter "old0"
    .parameter "active0"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 250
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 251
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 252
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 272
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 260
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/16 v2, 0x100

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 261
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    .line 264
    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    .line 266
    :sswitch_2
    const-wide/16 v1, 0x80

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    .line 268
    :sswitch_3
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    .line 257
    :sswitch_data_0
    .sparse-switch
        0x4e -> :sswitch_0
        0x66 -> :sswitch_1
        0x6c -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa3_0(JJ)I
    .locals 7
    .parameter "old0"
    .parameter "active0"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x2

    .line 276
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 277
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 296
    :goto_0
    return v1

    .line 278
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 296
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 286
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v1

    goto :goto_0

    .line 288
    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v1

    goto :goto_0

    .line 290
    :sswitch_2
    const-wide/16 v2, 0x80

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 291
    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    .line 283
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6c -> :sswitch_2
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa4_0(JJ)I
    .locals 7
    .parameter "old0"
    .parameter "active0"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x3

    .line 300
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 301
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 318
    :goto_0
    return v1

    .line 302
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 318
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 310
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 311
    const/16 v2, 0x1a

    invoke-direct {p0, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 314
    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v1

    goto :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa5_0(JJ)I
    .locals 4
    .parameter "old0"
    .parameter "active0"

    .prologue
    const/4 v3, 0x4

    .line 322
    and-long/2addr p3, p1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 323
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 336
    :goto_0
    return v1

    .line 324
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    iget-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_0

    .line 336
    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    .line 327
    const/4 v1, 0x5

    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v1

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_0(JJ)I
    .locals 4
    .parameter "old0"
    .parameter "active0"

    .prologue
    const/4 v3, 0x5

    .line 340
    and-long/2addr p3, p1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 341
    const/4 v1, 0x4

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 342
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    iget-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_0

    .line 354
    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    .line 345
    const/4 v1, 0x6

    goto :goto_0

    .line 350
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v1

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa7_0(JJ)I
    .locals 7
    .parameter "old0"
    .parameter "active0"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x7

    const/4 v4, 0x6

    .line 358
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 359
    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 374
    :goto_0
    return v1

    .line 360
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    .line 374
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 368
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 369
    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x79
        :pswitch_0
    .end packed-switch
.end method

.method private jjStartNfaWithStates_0(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 378
    iput p2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 379
    iput p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 381
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 877
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 786
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 188
    iput p2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 189
    iput p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 190
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 9
    .parameter "pos"
    .parameter "active0"

    .prologue
    const-wide/16 v7, 0x200

    const/16 v6, 0xb

    const/4 v1, -0x1

    const/16 v0, 0xa

    const-wide/16 v4, 0x0

    .line 115
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 118
    :pswitch_0
    const-wide/16 v2, 0x380

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 120
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    goto :goto_0

    .line 123
    :cond_1
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 124
    const/16 v0, 0x2b

    goto :goto_0

    :cond_2
    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :pswitch_1
    const-wide/16 v2, 0x380

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 129
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 130
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 133
    goto :goto_0

    .line 135
    :pswitch_2
    const-wide/16 v2, 0x100

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 137
    const-wide/16 v2, 0x280

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 139
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 140
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 143
    goto :goto_0

    .line 145
    :pswitch_3
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 147
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 149
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 150
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 153
    goto :goto_0

    .line 155
    :pswitch_4
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 157
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 158
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_6
    move v0, v1

    .line 161
    goto :goto_0

    .line 163
    :pswitch_5
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 165
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 166
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_7
    move v0, v1

    .line 169
    goto :goto_0

    .line 171
    :pswitch_6
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 173
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 174
    const/4 v1, 0x6

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_8
    move v0, v1

    .line 177
    goto :goto_0

    .line 115
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
    .end packed-switch
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 869
    .line 872
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 778
    .line 781
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public ReInit(Lcom/htc/gson/SimpleCharStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 1039
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1040
    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1041
    iput-object p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    .line 1042
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 1043
    return-void
.end method

.method public ReInit(Lcom/htc/gson/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 1055
    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInit(Lcom/htc/gson/SimpleCharStream;)V

    .line 1056
    invoke-virtual {p0, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->SwitchTo(I)V

    .line 1057
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 1062
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1063
    :cond_0
    new-instance v0, Lcom/htc/gson/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/gson/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1065
    :cond_1
    iput p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1066
    return-void
.end method

.method public getNextToken()Lcom/htc/gson/Token;
    .locals 15

    .prologue
    .line 1103
    const/4 v8, 0x0

    .line 1110
    .local v8, curPos:I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :goto_1
    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    packed-switch v0, :pswitch_data_0

    .line 1149
    :goto_2
    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_7

    .line 1151
    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V

    .line 1153
    :cond_1
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoToken:[J

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v13, 0x1

    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v13, v0

    and-long/2addr v6, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-eqz v0, :cond_4

    .line 1155
    invoke-virtual {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjFillToken()Lcom/htc/gson/Token;

    move-result-object v11

    .line 1156
    .local v11, matchedToken:Lcom/htc/gson/Token;
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1157
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    :cond_2
    move-object v12, v11

    .line 1158
    .end local v11           #matchedToken:Lcom/htc/gson/Token;
    .local v12, matchedToken:Lcom/htc/gson/Token;
    :goto_3
    return-object v12

    .line 1112
    .end local v12           #matchedToken:Lcom/htc/gson/Token;
    :catch_0
    move-exception v9

    .line 1114
    .local v9, e:Ljava/io/IOException;
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1115
    invoke-virtual {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjFillToken()Lcom/htc/gson/Token;

    move-result-object v11

    .restart local v11       #matchedToken:Lcom/htc/gson/Token;
    move-object v12, v11

    .line 1116
    .end local v11           #matchedToken:Lcom/htc/gson/Token;
    .restart local v12       #matchedToken:Lcom/htc/gson/Token;
    goto :goto_3

    .line 1124
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #matchedToken:Lcom/htc/gson/Token;
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V

    .line 1125
    :goto_4
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0x20

    if-gt v0, v2, :cond_3

    const-wide v6, 0x100002600L

    const-wide/16 v13, 0x1

    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shl-long/2addr v13, v0

    and-long/2addr v6, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-eqz v0, :cond_3

    .line 1126
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1128
    :catch_1
    move-exception v10

    .local v10, e1:Ljava/io/IOException;
    goto/16 :goto_0

    .line 1129
    .end local v10           #e1:Ljava/io/IOException;
    :cond_3
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1130
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1131
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v8

    .line 1132
    goto/16 :goto_2

    .line 1134
    :pswitch_1
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1135
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1136
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v8

    .line 1137
    goto/16 :goto_2

    .line 1139
    :pswitch_2
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1140
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1141
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v8

    .line 1142
    goto/16 :goto_2

    .line 1144
    :pswitch_3
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1145
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1146
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v8

    goto/16 :goto_2

    .line 1160
    :cond_4
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoSkip:[J

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v13, 0x1

    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v13, v0

    and-long/2addr v6, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-eqz v0, :cond_5

    .line 1162
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1163
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 1166
    :cond_5
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 1167
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1168
    :cond_6
    const/4 v8, 0x0

    .line 1169
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1171
    :try_start_2
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1174
    :catch_2
    move-exception v0

    .line 1176
    :cond_7
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 1177
    .local v3, error_line:I
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 1178
    .local v4, error_column:I
    const/4 v5, 0x0

    .line 1179
    .local v5, error_after:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1180
    .local v1, EOFSeen:Z
    :try_start_3
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1191
    :goto_5
    if-nez v1, :cond_8

    .line 1192
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V

    .line 1193
    const/4 v0, 0x1

    if-gt v8, v0, :cond_c

    const-string v5, ""

    .line 1195
    :cond_8
    :goto_6
    new-instance v0, Lcom/htc/gson/TokenMgrError;

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    iget-char v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/gson/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    .line 1181
    :catch_3
    move-exception v10

    .line 1182
    .restart local v10       #e1:Ljava/io/IOException;
    const/4 v1, 0x1

    .line 1183
    const/4 v0, 0x1

    if-gt v8, v0, :cond_a

    const-string v5, ""

    .line 1184
    :goto_7
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0xd

    if-ne v0, v2, :cond_b

    .line 1185
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 1186
    const/4 v4, 0x0

    goto :goto_5

    .line 1183
    :cond_a
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 1189
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1193
    .end local v10           #e1:Ljava/io/IOException;
    :cond_c
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 1121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/htc/gson/Token;
    .locals 9

    .prologue
    .line 1076
    sget-object v7, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v8, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget-object v5, v7, v8

    .line 1077
    .local v5, im:Ljava/lang/String;
    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, curTokenImage:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 1079
    .local v1, beginLine:I
    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getBeginColumn()I

    move-result v0

    .line 1080
    .local v0, beginColumn:I
    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 1081
    .local v4, endLine:I
    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getEndColumn()I

    move-result v3

    .line 1082
    .local v3, endColumn:I
    iget v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    invoke-static {v7, v2}, Lcom/htc/gson/Token;->newToken(ILjava/lang/String;)Lcom/htc/gson/Token;

    move-result-object v6

    .line 1084
    .local v6, t:Lcom/htc/gson/Token;
    iput v1, v6, Lcom/htc/gson/Token;->beginLine:I

    .line 1085
    iput v4, v6, Lcom/htc/gson/Token;->endLine:I

    .line 1086
    iput v0, v6, Lcom/htc/gson/Token;->beginColumn:I

    .line 1087
    iput v3, v6, Lcom/htc/gson/Token;->endColumn:I

    .line 1089
    return-object v6

    .end local v0           #beginColumn:I
    .end local v1           #beginLine:I
    .end local v2           #curTokenImage:Ljava/lang/String;
    .end local v3           #endColumn:I
    .end local v4           #endLine:I
    .end local v6           #t:Lcom/htc/gson/Token;
    :cond_0
    move-object v2, v5

    .line 1077
    goto :goto_0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
