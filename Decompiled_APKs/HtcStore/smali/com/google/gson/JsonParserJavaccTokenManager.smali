.class final Lcom/google/gson/JsonParserJavaccTokenManager;
.super Ljava/lang/Object;
.source "JsonParserJavaccTokenManager.java"

# interfaces
.implements Lcom/google/gson/JsonParserJavaccConstants;


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

.field protected input_stream:Lcom/google/gson/SimpleCharStream;

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

    .line 382
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjbitVec0:[J

    .line 385
    new-array v0, v6, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjbitVec2:[J

    .line 972
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    .line 989
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

    sput-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 996
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

    sput-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 1004
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    .line 1008
    new-array v0, v5, [J

    const-wide v1, 0x7fe775fe1L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjtoToken:[J

    .line 1011
    new-array v0, v5, [J

    const-wide/16 v1, 0x1e

    aput-wide v1, v0, v4

    sput-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjtoSkip:[J

    .line 1014
    new-array v0, v5, [J

    const-wide/32 v1, 0x880000

    aput-wide v1, v0, v4

    sput-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjtoMore:[J

    return-void

    .line 382
    nop

    :array_0
    .array-data 0x8
        0xfet 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 385
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 972
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

    .line 1004
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

.method public constructor <init>(Lcom/google/gson/SimpleCharStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 1022
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 1018
    const/16 v0, 0x2b

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    .line 1019
    const/16 v0, 0x56

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    .line 1090
    iput v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1091
    iput v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->defaultLexState:I

    .line 1025
    iput-object p1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    .line 1026
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/google/gson/JsonParserJavaccTokenManager;-><init>(Lcom/google/gson/SimpleCharStream;)V

    .line 1031
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->SwitchTo(I)V

    .line 1032
    return-void
.end method

.method private ReInitRounds()V
    .locals 4

    .prologue
    .line 1045
    const v2, -0x7fffffff

    iput v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    .line 1046
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

    .line 1047
    iget-object v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 1048
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
    .line 1209
    :goto_0
    iget-object v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 1210
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 1211
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

    .line 977
    packed-switch p0, :pswitch_data_0

    .line 982
    sget-object v2, Lcom/google/gson/JsonParserJavaccTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v0

    .line 980
    :pswitch_0
    sget-object v2, Lcom/google/gson/JsonParserJavaccTokenManager;->jjbitVec2:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 984
    goto :goto_0

    .line 977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private jjCheckNAdd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 1203
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    aput v1, v0, p1

    .line 1205
    :cond_0
    return-void
.end method

.method private jjCheckNAddStates(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1221
    :goto_0
    sget-object v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 1222
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 1223
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
    .line 1214
    invoke-direct {p0, p1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 1215
    invoke-direct {p0, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 1216
    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 19
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 390
    const/4 v14, 0x0

    .line 391
    .local v14, startsAt:I
    const/16 v15, 0x2b

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 392
    const/4 v10, 0x1

    .line 393
    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 394
    const v11, 0x7fffffff

    .line 397
    .local v11, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 399
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_d

    .line 401
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v12, v15, v17

    .line 404
    .local v12, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_0

    .line 544
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v10, v14, :cond_1

    .line 761
    .end local v12           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v11, v15, :cond_3

    .line 763
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 764
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 765
    const v11, 0x7fffffff

    .line 767
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 768
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x2b

    if-ne v10, v14, :cond_1f

    .line 771
    :goto_3
    return p2

    .line 407
    .restart local v12       #l:J
    :pswitch_1
    const-wide v15, -0x400002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_4

    .line 408
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1

    .line 409
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 411
    const/16 v15, 0x11

    if-le v11, v15, :cond_2

    .line 412
    const/16 v11, 0x11

    goto :goto_1

    .line 416
    :pswitch_2
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 418
    const/4 v15, 0x6

    if-le v11, v15, :cond_5

    .line 419
    const/4 v11, 0x6

    .line 420
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 422
    :cond_6
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 423
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1

    .line 424
    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 425
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 428
    :pswitch_3
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 430
    const/4 v15, 0x6

    if-le v11, v15, :cond_8

    .line 431
    const/4 v11, 0x6

    .line 432
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 435
    :pswitch_4
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 437
    const/16 v15, 0xb

    if-le v11, v15, :cond_9

    .line 438
    const/16 v11, 0xb

    .line 439
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xa

    aput v17, v15, v16

    goto/16 :goto_1

    .line 442
    :pswitch_5
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 443
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xd

    aput v17, v15, v16

    goto/16 :goto_1

    .line 446
    :pswitch_6
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xe

    aput v17, v15, v16

    goto/16 :goto_1

    .line 450
    :pswitch_7
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 451
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xf

    aput v17, v15, v16

    goto/16 :goto_1

    .line 454
    :pswitch_8
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v15, 0xe

    if-le v11, v15, :cond_2

    .line 455
    const/16 v11, 0xe

    goto/16 :goto_1

    .line 458
    :pswitch_9
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 459
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 462
    :pswitch_a
    const-wide v15, -0x8000002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 463
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 466
    :pswitch_b
    const-wide v15, 0x808400000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 467
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 470
    :pswitch_c
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 471
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x17

    aput v17, v15, v16

    goto/16 :goto_1

    .line 474
    :pswitch_d
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 475
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x18

    aput v17, v15, v16

    goto/16 :goto_1

    .line 478
    :pswitch_e
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 479
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x19

    aput v17, v15, v16

    goto/16 :goto_1

    .line 482
    :pswitch_f
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 483
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 486
    :pswitch_10
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/16 v15, 0x10

    if-le v11, v15, :cond_2

    .line 487
    const/16 v11, 0x10

    goto/16 :goto_1

    .line 490
    :pswitch_11
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 491
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 494
    :pswitch_12
    const-wide v15, -0x400002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 495
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 498
    :pswitch_13
    const-wide v15, 0x808400000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 499
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 502
    :pswitch_14
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 503
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x22

    aput v17, v15, v16

    goto/16 :goto_1

    .line 506
    :pswitch_15
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 507
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x23

    aput v17, v15, v16

    goto/16 :goto_1

    .line 510
    :pswitch_16
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 511
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x24

    aput v17, v15, v16

    goto/16 :goto_1

    .line 514
    :pswitch_17
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 515
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 518
    :pswitch_18
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/16 v15, 0x11

    if-le v11, v15, :cond_2

    .line 519
    const/16 v11, 0x11

    goto/16 :goto_1

    .line 522
    :pswitch_19
    const-wide v15, 0x3ff280000000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 524
    const/4 v15, 0x5

    if-le v11, v15, :cond_a

    .line 525
    const/4 v11, 0x5

    .line 526
    :cond_a
    const/16 v15, 0x29

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 529
    :pswitch_1a
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 531
    const/4 v15, 0x5

    if-le v11, v15, :cond_b

    .line 532
    const/4 v11, 0x5

    .line 533
    :cond_b
    const/16 v15, 0x29

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 536
    :pswitch_1b
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 538
    const/16 v15, 0xc

    if-le v11, v15, :cond_c

    .line 539
    const/16 v11, 0xc

    .line 540
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2a

    aput v17, v15, v16

    goto/16 :goto_1

    .line 546
    .end local v12           #l:J
    :cond_d
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_1c

    .line 548
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 551
    .restart local v12       #l:J
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_1

    .line 735
    :cond_f
    :goto_4
    :pswitch_1c
    if-ne v10, v14, :cond_e

    goto/16 :goto_2

    .line 554
    :pswitch_1d
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_11

    .line 555
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    .line 558
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1f

    aput v17, v15, v16

    goto :goto_4

    .line 556
    :cond_11
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 557
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x20

    aput v17, v15, v16

    goto :goto_5

    .line 562
    :pswitch_1e
    const-wide v15, 0x7ffffde87ffffdeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_14

    .line 564
    const/16 v15, 0xb

    if-le v11, v15, :cond_12

    .line 565
    const/16 v11, 0xb

    .line 566
    :cond_12
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 576
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 577
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x7

    aput v17, v15, v16

    goto/16 :goto_4

    .line 568
    :cond_14
    const-wide v15, 0x2000000020L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_16

    .line 570
    const/16 v15, 0xc

    if-le v11, v15, :cond_15

    .line 571
    const/16 v11, 0xc

    .line 572
    :cond_15
    const/16 v15, 0x28

    const/16 v16, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_6

    .line 574
    :cond_16
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 575
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xb

    aput v17, v15, v16

    goto :goto_6

    .line 578
    :cond_17
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x74

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 579
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x3

    aput v17, v15, v16

    goto/16 :goto_4

    .line 582
    :pswitch_1f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x65

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const/16 v15, 0xa

    if-le v11, v15, :cond_f

    .line 583
    const/16 v11, 0xa

    goto/16 :goto_4

    .line 586
    :pswitch_20
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 587
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 590
    :pswitch_21
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x72

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 591
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2

    aput v17, v15, v16

    goto/16 :goto_4

    .line 594
    :pswitch_22
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x73

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 595
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 598
    :pswitch_23
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x6c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 599
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x5

    aput v17, v15, v16

    goto/16 :goto_4

    .line 602
    :pswitch_24
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x61

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x6

    aput v17, v15, v16

    goto/16 :goto_4

    .line 606
    :pswitch_25
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 607
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x7

    aput v17, v15, v16

    goto/16 :goto_4

    .line 610
    :pswitch_26
    const-wide v15, 0x7ffffde87ffffdeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 612
    const/16 v15, 0xb

    if-le v11, v15, :cond_18

    .line 613
    const/16 v11, 0xb

    .line 614
    :cond_18
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 617
    :pswitch_27
    const-wide v15, 0x7fffffe87fffffeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 619
    const/16 v15, 0xb

    if-le v11, v15, :cond_19

    .line 620
    const/16 v11, 0xb

    .line 621
    :cond_19
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 624
    :pswitch_28
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 625
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xc

    aput v17, v15, v16

    goto/16 :goto_4

    .line 628
    :pswitch_29
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 629
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xd

    aput v17, v15, v16

    goto/16 :goto_4

    .line 632
    :pswitch_2a
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 633
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xe

    aput v17, v15, v16

    goto/16 :goto_4

    .line 636
    :pswitch_2b
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 637
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xf

    aput v17, v15, v16

    goto/16 :goto_4

    .line 640
    :pswitch_2c
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/16 v15, 0xe

    if-le v11, v15, :cond_f

    .line 641
    const/16 v11, 0xe

    goto/16 :goto_4

    .line 644
    :pswitch_2d
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 645
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xb

    aput v17, v15, v16

    goto/16 :goto_4

    .line 648
    :pswitch_2e
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 649
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 652
    :pswitch_2f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 653
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x14

    aput v17, v15, v16

    goto/16 :goto_4

    .line 656
    :pswitch_30
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 657
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 660
    :pswitch_31
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 661
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x16

    aput v17, v15, v16

    goto/16 :goto_4

    .line 664
    :pswitch_32
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 665
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x17

    aput v17, v15, v16

    goto/16 :goto_4

    .line 668
    :pswitch_33
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x18

    aput v17, v15, v16

    goto/16 :goto_4

    .line 672
    :pswitch_34
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 673
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x19

    aput v17, v15, v16

    goto/16 :goto_4

    .line 676
    :pswitch_35
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 677
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 680
    :pswitch_36
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x15

    aput v17, v15, v16

    goto/16 :goto_4

    .line 684
    :pswitch_37
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 685
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 688
    :pswitch_38
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1f

    aput v17, v15, v16

    goto/16 :goto_4

    .line 692
    :pswitch_39
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 693
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 696
    :pswitch_3a
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 697
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x21

    aput v17, v15, v16

    goto/16 :goto_4

    .line 700
    :pswitch_3b
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 701
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x22

    aput v17, v15, v16

    goto/16 :goto_4

    .line 704
    :pswitch_3c
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 705
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x23

    aput v17, v15, v16

    goto/16 :goto_4

    .line 708
    :pswitch_3d
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 709
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x24

    aput v17, v15, v16

    goto/16 :goto_4

    .line 712
    :pswitch_3e
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 713
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 716
    :pswitch_3f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 717
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x20

    aput v17, v15, v16

    goto/16 :goto_4

    .line 720
    :pswitch_40
    const-wide v15, 0x2000000020L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 722
    const/16 v15, 0xc

    if-le v11, v15, :cond_1a

    .line 723
    const/16 v11, 0xc

    .line 724
    :cond_1a
    const/16 v15, 0x28

    const/16 v16, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_4

    .line 727
    :pswitch_41
    const-wide v15, 0x7fffffe87fffffeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 729
    const/16 v15, 0xc

    if-le v11, v15, :cond_1b

    .line 730
    const/16 v11, 0xc

    .line 731
    :cond_1b
    const/16 v15, 0x2a

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 739
    .end local v12           #l:J
    :cond_1c
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v2, v15, 0x8

    .line 740
    .local v2, hiByte:I
    shr-int/lit8 v3, v2, 0x6

    .line 741
    .local v3, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v2, 0x3f

    shl-long v5, v15, v17

    .line 742
    .local v5, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v4, v15, 0x6

    .line 743
    .local v4, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v7, v15, v17

    .line 746
    .local v7, l2:J
    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    sparse-switch v15, :sswitch_data_0

    .line 759
    :cond_1e
    :goto_7
    if-ne v10, v14, :cond_1d

    goto/16 :goto_2

    .line 750
    :sswitch_0
    invoke-static/range {v2 .. v8}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 751
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_7

    .line 754
    :sswitch_1
    invoke-static/range {v2 .. v8}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 755
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjAddStates(II)V

    goto :goto_7

    .line 770
    .end local v2           #hiByte:I
    .end local v3           #i1:I
    .end local v4           #i2:I
    .end local v5           #l1:J
    .end local v7           #l2:J
    :cond_1f
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 771
    :catch_0
    move-exception v9

    .local v9, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 404
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

    .line 551
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

    .line 746
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
    .line 889
    const/4 v14, 0x0

    .line 890
    .local v14, startsAt:I
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 891
    const/4 v10, 0x1

    .line 892
    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 893
    const v11, 0x7fffffff

    .line 896
    .local v11, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 897
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 898
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 900
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v12, v15, v17

    .line 903
    .local v12, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_0

    .line 923
    :cond_2
    :goto_1
    if-ne v10, v14, :cond_1

    .line 959
    .end local v12           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v11, v15, :cond_3

    .line 961
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 962
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 963
    const v11, 0x7fffffff

    .line 965
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 966
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x2

    if-ne v10, v14, :cond_b

    .line 969
    :goto_3
    return p2

    .line 906
    .restart local v12       #l:J
    :pswitch_0
    const-wide v15, -0x400000001L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_4

    .line 908
    const/16 v15, 0x15

    if-le v11, v15, :cond_2

    .line 909
    const/16 v11, 0x15

    goto :goto_1

    .line 911
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 913
    const/16 v15, 0x14

    if-le v11, v15, :cond_2

    .line 914
    const/16 v11, 0x14

    goto :goto_1

    .line 918
    :pswitch_1
    const-wide v15, -0x400000001L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 919
    const/16 v11, 0x15

    goto :goto_1

    .line 925
    .end local v12           #l:J
    :cond_5
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 927
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 930
    .restart local v12       #l:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_1

    .line 938
    :cond_7
    :goto_4
    if-ne v10, v14, :cond_6

    goto :goto_2

    .line 933
    :pswitch_2
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_7

    .line 934
    const/16 v11, 0x15

    goto :goto_4

    .line 942
    .end local v12           #l:J
    :cond_8
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v2, v15, 0x8

    .line 943
    .local v2, hiByte:I
    shr-int/lit8 v3, v2, 0x6

    .line 944
    .local v3, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v2, 0x3f

    shl-long v5, v15, v17

    .line 945
    .local v5, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v4, v15, 0x6

    .line 946
    .local v4, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v7, v15, v17

    .line 949
    .local v7, l2:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_2

    .line 957
    :cond_a
    :goto_5
    if-ne v10, v14, :cond_9

    goto/16 :goto_2

    .line 952
    :pswitch_3
    invoke-static/range {v2 .. v8}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x15

    if-le v11, v15, :cond_a

    .line 953
    const/16 v11, 0x15

    goto :goto_5

    .line 968
    .end local v2           #hiByte:I
    .end local v3           #i1:I
    .end local v4           #i2:I
    .end local v5           #l1:J
    .end local v7           #l2:J
    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 969
    :catch_0
    move-exception v9

    .local v9, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 930
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 949
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
    .line 798
    const/4 v14, 0x0

    .line 799
    .local v14, startsAt:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 800
    const/4 v4, 0x1

    .line 801
    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 802
    const v7, 0x7fffffff

    .line 805
    .local v7, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 807
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 809
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v8, v15, v17

    .line 812
    .local v8, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_0

    .line 820
    :cond_2
    :goto_1
    if-ne v4, v14, :cond_1

    .line 852
    .end local v8           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v7, v15, :cond_3

    .line 854
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 855
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 856
    const v7, 0x7fffffff

    .line 858
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 859
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x1

    if-ne v4, v14, :cond_9

    .line 862
    :goto_3
    return p2

    .line 815
    .restart local v8       #l:J
    :pswitch_0
    const-wide v15, 0x800400000000L

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 816
    const/16 v7, 0x16

    goto :goto_1

    .line 822
    .end local v8           #l:J
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 824
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v8, v15, v17

    .line 827
    .restart local v8       #l:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_1

    .line 835
    :cond_6
    :goto_4
    if-ne v4, v14, :cond_5

    goto :goto_2

    .line 830
    :pswitch_1
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 831
    const/16 v7, 0x16

    goto :goto_4

    .line 839
    .end local v8           #l:J
    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v3, v15, 0x8

    .line 840
    .local v3, hiByte:I
    shr-int/lit8 v5, v3, 0x6

    .line 841
    .local v5, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v3, 0x3f

    shl-long v10, v15, v17

    .line 842
    .local v10, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v6, v15, 0x6

    .line 843
    .local v6, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 846
    .local v12, l2:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    .line 850
    if-ne v4, v14, :cond_8

    goto/16 :goto_2

    .line 861
    .end local v3           #hiByte:I
    .end local v5           #i1:I
    .end local v6           #i2:I
    .end local v10           #l1:J
    .end local v12           #l2:J
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 862
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    goto :goto_3

    .line 812
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 827
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
    .line 20
    const/4 v14, 0x0

    .line 21
    .local v14, startsAt:I
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 22
    const/4 v4, 0x1

    .line 23
    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 24
    const v7, 0x7fffffff

    .line 27
    .local v7, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 29
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 31
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v8, v15, v17

    .line 34
    .local v8, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_0

    .line 54
    :cond_2
    :goto_1
    if-ne v4, v14, :cond_1

    .line 98
    .end local v8           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v7, v15, :cond_3

    .line 100
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 101
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 102
    const v7, 0x7fffffff

    .line 104
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 105
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x4

    if-ne v4, v14, :cond_9

    .line 108
    :goto_3
    return p2

    .line 37
    .restart local v8       #l:J
    :pswitch_0
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 38
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1

    aput v17, v15, v16

    goto :goto_1

    .line 41
    :pswitch_1
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 42
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2

    aput v17, v15, v16

    goto :goto_1

    .line 45
    :pswitch_2
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 46
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x3

    aput v17, v15, v16

    goto/16 :goto_1

    .line 49
    :pswitch_3
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v15, 0x19

    if-le v7, v15, :cond_2

    .line 50
    const/16 v7, 0x19

    goto/16 :goto_1

    .line 56
    .end local v8           #l:J
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 58
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v8, v15, v17

    .line 61
    .restart local v8       #l:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_1

    .line 81
    :cond_6
    :goto_4
    if-ne v4, v14, :cond_5

    goto/16 :goto_2

    .line 64
    :pswitch_4
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 65
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1

    aput v17, v15, v16

    goto :goto_4

    .line 68
    :pswitch_5
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 69
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2

    aput v17, v15, v16

    goto :goto_4

    .line 72
    :pswitch_6
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 73
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x3

    aput v17, v15, v16

    goto :goto_4

    .line 76
    :pswitch_7
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    const/16 v15, 0x19

    if-le v7, v15, :cond_6

    .line 77
    const/16 v7, 0x19

    goto :goto_4

    .line 85
    .end local v8           #l:J
    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v3, v15, 0x8

    .line 86
    .local v3, hiByte:I
    shr-int/lit8 v5, v3, 0x6

    .line 87
    .local v5, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v3, 0x3f

    shl-long v10, v15, v17

    .line 88
    .local v10, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v6, v15, 0x6

    .line 89
    .local v6, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 92
    .local v12, l2:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    .line 96
    if-ne v4, v14, :cond_8

    goto/16 :goto_2

    .line 107
    .end local v3           #hiByte:I
    .end local v5           #i1:I
    .end local v6           #i2:I
    .end local v10           #l1:J
    .end local v12           #l2:J
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 61
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

    .line 192
    iget-char v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 221
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 195
    :sswitch_0
    const/16 v0, 0x12

    const/16 v1, 0x2b

    invoke-direct {p0, v2, v0, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 197
    :sswitch_1
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 199
    :sswitch_2
    const/16 v0, 0x1d

    invoke-direct {p0, v2, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 201
    :sswitch_3
    const/16 v0, 0x21

    invoke-direct {p0, v2, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 203
    :sswitch_4
    const/16 v0, 0x22

    invoke-direct {p0, v2, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 205
    :sswitch_5
    const/16 v0, 0x1e

    invoke-direct {p0, v2, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 207
    :sswitch_6
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 209
    :sswitch_7
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 211
    :sswitch_8
    const/16 v0, 0x1f

    invoke-direct {p0, v2, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 213
    :sswitch_9
    const/16 v0, 0x20

    invoke-direct {p0, v2, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 215
    :sswitch_a
    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 217
    :sswitch_b
    const/16 v0, 0x1b

    invoke-direct {p0, v2, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 219
    :sswitch_c
    const/16 v0, 0x1c

    invoke-direct {p0, v2, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 192
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

    .line 879
    iget-char v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 884
    invoke-direct {p0, v1, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 882
    :pswitch_0
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 879
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 788
    iget-char v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 793
    invoke-direct {p0, v1, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 791
    :pswitch_0
    const/16 v0, 0x17

    invoke-direct {p0, v1, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x75
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0, v0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa1_0(J)I
    .locals 3
    .parameter "active0"

    .prologue
    const/4 v2, 0x0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    iget-char v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_0

    .line 244
    invoke-direct {p0, v2, p1, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v2, p1, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    .line 229
    const/4 v1, 0x1

    goto :goto_0

    .line 234
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 236
    :sswitch_1
    const-wide/16 v1, 0x100

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 238
    :sswitch_2
    const-wide/16 v1, 0x200

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 240
    :sswitch_3
    const-wide/16 v1, 0x80

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 231
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

    .line 248
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 249
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 250
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    iget-char v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 270
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 258
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/16 v2, 0x100

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 259
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    .line 262
    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    .line 264
    :sswitch_2
    const-wide/16 v1, 0x80

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    .line 266
    :sswitch_3
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    .line 255
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

    .line 274
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 275
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 276
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    iget-char v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 294
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 284
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v1

    goto :goto_0

    .line 286
    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v1

    goto :goto_0

    .line 288
    :sswitch_2
    const-wide/16 v2, 0x80

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 289
    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    .line 281
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

    .line 298
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 299
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 316
    :goto_0
    return v1

    .line 300
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    iget-char v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 316
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 308
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 309
    const/16 v2, 0x1a

    invoke-direct {p0, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 312
    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v1

    goto :goto_0

    .line 305
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

    .line 320
    and-long/2addr p3, p1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 321
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 334
    :goto_0
    return v1

    .line 322
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    iget-char v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_0

    .line 334
    invoke-direct {p0, v3, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v3, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    .line 325
    const/4 v1, 0x5

    goto :goto_0

    .line 330
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v1

    goto :goto_0

    .line 327
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

    .line 338
    and-long/2addr p3, p1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 339
    const/4 v1, 0x4

    invoke-direct {p0, v1, p1, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 352
    :goto_0
    return v1

    .line 340
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    iget-char v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_0

    .line 352
    invoke-direct {p0, v3, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v3, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    .line 343
    const/4 v1, 0x6

    goto :goto_0

    .line 348
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v1

    goto :goto_0

    .line 345
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

    .line 356
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 357
    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 372
    :goto_0
    return v1

    .line 358
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    iget-char v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    .line 372
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 366
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 367
    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    .line 363
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
    .line 376
    iput p2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 377
    iput p1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 379
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
    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 875
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 784
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 186
    iput p2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 187
    iput p1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 188
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

    .line 113
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 116
    :pswitch_0
    const-wide/16 v2, 0x380

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 118
    iput v6, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    goto :goto_0

    .line 121
    :cond_1
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 122
    const/16 v0, 0x2b

    goto :goto_0

    :cond_2
    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :pswitch_1
    const-wide/16 v2, 0x380

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 127
    iput v6, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 128
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 131
    goto :goto_0

    .line 133
    :pswitch_2
    const-wide/16 v2, 0x100

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 135
    const-wide/16 v2, 0x280

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 137
    iput v6, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 138
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 141
    goto :goto_0

    .line 143
    :pswitch_3
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 145
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 147
    iput v6, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 148
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :pswitch_4
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 155
    iput v6, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 156
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_6
    move v0, v1

    .line 159
    goto :goto_0

    .line 161
    :pswitch_5
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 163
    iput v6, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 164
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_7
    move v0, v1

    .line 167
    goto :goto_0

    .line 169
    :pswitch_6
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 171
    iput v6, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 172
    const/4 v1, 0x6

    iput v1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_8
    move v0, v1

    .line 175
    goto :goto_0

    .line 113
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
    .line 867
    .line 870
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 776
    .line 779
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public ReInit(Lcom/google/gson/SimpleCharStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 1037
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1038
    iget v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1039
    iput-object p1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    .line 1040
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 1041
    return-void
.end method

.method public ReInit(Lcom/google/gson/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 1053
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonParserJavaccTokenManager;->ReInit(Lcom/google/gson/SimpleCharStream;)V

    .line 1054
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonParserJavaccTokenManager;->SwitchTo(I)V

    .line 1055
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 1060
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1061
    :cond_0
    new-instance v0, Lcom/google/gson/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lcom/google/gson/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1063
    :cond_1
    iput p1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1064
    return-void
.end method

.method public getNextToken()Lcom/google/gson/Token;
    .locals 15

    .prologue
    .line 1101
    const/4 v8, 0x0

    .line 1108
    .local v8, curPos:I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/google/gson/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_1
    iget v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curLexState:I

    packed-switch v0, :pswitch_data_0

    .line 1147
    :goto_2
    iget v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_7

    .line 1149
    iget v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/gson/SimpleCharStream;->backup(I)V

    .line 1151
    :cond_1
    sget-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjtoToken:[J

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v13, 0x1

    iget v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v13, v0

    and-long/2addr v6, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-eqz v0, :cond_4

    .line 1153
    invoke-virtual {p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjFillToken()Lcom/google/gson/Token;

    move-result-object v11

    .line 1154
    .local v11, matchedToken:Lcom/google/gson/Token;
    sget-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1155
    sget-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curLexState:I

    :cond_2
    move-object v12, v11

    .line 1156
    .end local v11           #matchedToken:Lcom/google/gson/Token;
    .local v12, matchedToken:Lcom/google/gson/Token;
    :goto_3
    return-object v12

    .line 1110
    .end local v12           #matchedToken:Lcom/google/gson/Token;
    :catch_0
    move-exception v9

    .line 1112
    .local v9, e:Ljava/io/IOException;
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1113
    invoke-virtual {p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjFillToken()Lcom/google/gson/Token;

    move-result-object v11

    .restart local v11       #matchedToken:Lcom/google/gson/Token;
    move-object v12, v11

    .line 1114
    .end local v11           #matchedToken:Lcom/google/gson/Token;
    .restart local v12       #matchedToken:Lcom/google/gson/Token;
    goto :goto_3

    .line 1122
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #matchedToken:Lcom/google/gson/Token;
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/gson/SimpleCharStream;->backup(I)V

    .line 1123
    :goto_4
    iget-char v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0x20

    if-gt v0, v2, :cond_3

    const-wide v6, 0x100002600L

    const-wide/16 v13, 0x1

    iget-char v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    shl-long/2addr v13, v0

    and-long/2addr v6, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-eqz v0, :cond_3

    .line 1124
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/google/gson/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1126
    :catch_1
    move-exception v10

    .local v10, e1:Ljava/io/IOException;
    goto/16 :goto_0

    .line 1127
    .end local v10           #e1:Ljava/io/IOException;
    :cond_3
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1128
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1129
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v8

    .line 1130
    goto/16 :goto_2

    .line 1132
    :pswitch_1
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1133
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1134
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v8

    .line 1135
    goto/16 :goto_2

    .line 1137
    :pswitch_2
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1138
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1139
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v8

    .line 1140
    goto/16 :goto_2

    .line 1142
    :pswitch_3
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1143
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1144
    invoke-direct {p0}, Lcom/google/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v8

    goto/16 :goto_2

    .line 1158
    :cond_4
    sget-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjtoSkip:[J

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v13, 0x1

    iget v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v13, v0

    and-long/2addr v6, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-eqz v0, :cond_5

    .line 1160
    sget-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1161
    sget-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 1164
    :cond_5
    sget-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 1165
    sget-object v0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1166
    :cond_6
    const/4 v8, 0x0

    .line 1167
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1169
    :try_start_2
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/google/gson/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1172
    :catch_2
    move-exception v0

    .line 1174
    :cond_7
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/google/gson/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 1175
    .local v3, error_line:I
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/google/gson/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 1176
    .local v4, error_column:I
    const/4 v5, 0x0

    .line 1177
    .local v5, error_after:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1178
    .local v1, EOFSeen:Z
    :try_start_3
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/google/gson/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/gson/SimpleCharStream;->backup(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1189
    :goto_5
    if-nez v1, :cond_8

    .line 1190
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/gson/SimpleCharStream;->backup(I)V

    .line 1191
    const/4 v0, 0x1

    if-gt v8, v0, :cond_c

    const-string v5, ""

    .line 1193
    :cond_8
    :goto_6
    new-instance v0, Lcom/google/gson/TokenMgrError;

    iget v2, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curLexState:I

    iget-char v6, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/gson/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    .line 1179
    :catch_3
    move-exception v10

    .line 1180
    .restart local v10       #e1:Ljava/io/IOException;
    const/4 v1, 0x1

    .line 1181
    const/4 v0, 0x1

    if-gt v8, v0, :cond_a

    const-string v5, ""

    .line 1182
    :goto_7
    iget-char v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    iget-char v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0xd

    if-ne v0, v2, :cond_b

    .line 1183
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 1184
    const/4 v4, 0x0

    goto :goto_5

    .line 1181
    :cond_a
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/google/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 1187
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1191
    .end local v10           #e1:Ljava/io/IOException;
    :cond_c
    iget-object v0, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/google/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/google/gson/Token;
    .locals 9

    .prologue
    .line 1074
    sget-object v7, Lcom/google/gson/JsonParserJavaccTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v8, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget-object v5, v7, v8

    .line 1075
    .local v5, im:Ljava/lang/String;
    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/google/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 1076
    .local v2, curTokenImage:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/google/gson/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 1077
    .local v1, beginLine:I
    iget-object v7, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/google/gson/SimpleCharStream;->getBeginColumn()I

    move-result v0

    .line 1078
    .local v0, beginColumn:I
    iget-object v7, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/google/gson/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 1079
    .local v4, endLine:I
    iget-object v7, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/google/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/google/gson/SimpleCharStream;->getEndColumn()I

    move-result v3

    .line 1080
    .local v3, endColumn:I
    iget v7, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    invoke-static {v7, v2}, Lcom/google/gson/Token;->newToken(ILjava/lang/String;)Lcom/google/gson/Token;

    move-result-object v6

    .line 1082
    .local v6, t:Lcom/google/gson/Token;
    iput v1, v6, Lcom/google/gson/Token;->beginLine:I

    .line 1083
    iput v4, v6, Lcom/google/gson/Token;->endLine:I

    .line 1084
    iput v0, v6, Lcom/google/gson/Token;->beginColumn:I

    .line 1085
    iput v3, v6, Lcom/google/gson/Token;->endColumn:I

    .line 1087
    return-object v6

    .end local v0           #beginColumn:I
    .end local v1           #beginLine:I
    .end local v2           #curTokenImage:Ljava/lang/String;
    .end local v3           #endColumn:I
    .end local v4           #endLine:I
    .end local v6           #t:Lcom/google/gson/Token;
    :cond_0
    move-object v2, v5

    .line 1075
    goto :goto_0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/gson/JsonParserJavaccTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
