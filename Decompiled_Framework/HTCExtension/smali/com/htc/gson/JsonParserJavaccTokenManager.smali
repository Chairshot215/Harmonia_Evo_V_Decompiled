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

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec0:[J

    new-array v0, v6, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec2:[J

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

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

    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    const-wide v1, 0x7fe775fe1L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x1e

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    const-wide/32 v1, 0x880000

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoMore:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0xfet 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

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

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x2b

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    const/16 v0, 0x56

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->defaultLexState:I

    iput-object p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lcom/htc/gson/SimpleCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/gson/JsonParserJavaccTokenManager;-><init>(Lcom/htc/gson/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private ReInitRounds()V
    .locals 4

    const v2, -0x7fffffff

    iput v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const/16 v0, 0x2b

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 4

    :goto_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object v2, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

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

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private jjCheckNAdd(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private jjCheckNAddStates(II)V
    .locals 2

    :goto_0
    sget-object v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 19

    const/4 v14, 0x0

    const/16 v15, 0x2b

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    const v11, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_d

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v12, v15, v17

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-ne v10, v14, :cond_1

    :goto_2
    const v15, 0x7fffffff

    if-eq v11, v15, :cond_3

    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    const v11, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x2b

    if-ne v10, v14, :cond_1f

    :goto_3
    return p2

    :pswitch_1
    const-wide v15, -0x400002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_4

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/16 v15, 0x11

    if-le v11, v15, :cond_2

    const/16 v11, 0x11

    goto :goto_1

    :pswitch_2
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    const/4 v15, 0x6

    if-le v11, v15, :cond_5

    const/4 v11, 0x6

    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_3
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/4 v15, 0x6

    if-le v11, v15, :cond_8

    const/4 v11, 0x6

    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_4
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v15, 0xb

    if-le v11, v15, :cond_9

    const/16 v11, 0xb

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

    :pswitch_5
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_6
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_7
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_8
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v15, 0xe

    if-le v11, v15, :cond_2

    const/16 v11, 0xe

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_a
    const-wide v15, -0x8000002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_b
    const-wide v15, 0x808400000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_c
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_d
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_e
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_f
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/16 v15, 0x10

    if-le v11, v15, :cond_2

    const/16 v11, 0x10

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_12
    const-wide v15, -0x400002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_13
    const-wide v15, 0x808400000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_14
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_15
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_16
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_17
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_18
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/16 v15, 0x11

    if-le v11, v15, :cond_2

    const/16 v11, 0x11

    goto/16 :goto_1

    :pswitch_19
    const-wide v15, 0x3ff280000000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/4 v15, 0x5

    if-le v11, v15, :cond_a

    const/4 v11, 0x5

    :cond_a
    const/16 v15, 0x29

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_1a
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/4 v15, 0x5

    if-le v11, v15, :cond_b

    const/4 v11, 0x5

    :cond_b
    const/16 v15, 0x29

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_1b
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v15, 0xc

    if-le v11, v15, :cond_c

    const/16 v11, 0xc

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

    :cond_d
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_1c

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_1

    :cond_f
    :goto_4
    :pswitch_1c
    if-ne v10, v14, :cond_e

    goto/16 :goto_2

    :pswitch_1d
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_11

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :cond_11
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

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

    :pswitch_1e
    const-wide v15, 0x7ffffde87ffffdeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_14

    const/16 v15, 0xb

    if-le v11, v15, :cond_12

    const/16 v11, 0xb

    :cond_12
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

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

    :cond_14
    const-wide v15, 0x2000000020L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_16

    const/16 v15, 0xc

    if-le v11, v15, :cond_15

    const/16 v11, 0xc

    :cond_15
    const/16 v15, 0x28

    const/16 v16, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

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

    :cond_17
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x74

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_1f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x65

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const/16 v15, 0xa

    if-le v11, v15, :cond_f

    const/16 v11, 0xa

    goto/16 :goto_4

    :pswitch_20
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    :pswitch_21
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x72

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_22
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x73

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    :pswitch_23
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x6c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_24
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x61

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_25
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_26
    const-wide v15, 0x7ffffde87ffffdeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/16 v15, 0xb

    if-le v11, v15, :cond_18

    const/16 v11, 0xb

    :cond_18
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    :pswitch_27
    const-wide v15, 0x7fffffe87fffffeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/16 v15, 0xb

    if-le v11, v15, :cond_19

    const/16 v11, 0xb

    :cond_19
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    :pswitch_28
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_29
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

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

    :pswitch_2a
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

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

    :pswitch_2b
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

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

    :pswitch_2c
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/16 v15, 0xe

    if-le v11, v15, :cond_f

    const/16 v11, 0xe

    goto/16 :goto_4

    :pswitch_2d
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_2e
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    :pswitch_2f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_30
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    :pswitch_31
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_32
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

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

    :pswitch_33
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

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

    :pswitch_34
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

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

    :pswitch_35
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    :pswitch_36
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_37
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    :pswitch_38
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_39
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    :pswitch_3a
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_3b
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

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

    :pswitch_3c
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

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

    :pswitch_3d
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

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

    :pswitch_3e
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    :pswitch_3f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

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

    :pswitch_40
    const-wide v15, 0x2000000020L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/16 v15, 0xc

    if-le v11, v15, :cond_1a

    const/16 v11, 0xc

    :cond_1a
    const/16 v15, 0x28

    const/16 v16, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_4

    :pswitch_41
    const-wide v15, 0x7fffffe87fffffeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/16 v15, 0xc

    if-le v11, v15, :cond_1b

    const/16 v11, 0xc

    :cond_1b
    const/16 v15, 0x2a

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v2, v15, 0x8

    shr-int/lit8 v3, v2, 0x6

    const-wide/16 v15, 0x1

    and-int/lit8 v17, v2, 0x3f

    shl-long v5, v15, v17

    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v4, v15, 0x6

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v7, v15, v17

    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    sparse-switch v15, :sswitch_data_0

    :cond_1e
    :goto_7
    if-ne v10, v14, :cond_1d

    goto/16 :goto_2

    :sswitch_0
    invoke-static/range {v2 .. v8}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_1e

    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_7

    :sswitch_1
    invoke-static/range {v2 .. v8}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_1e

    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjAddStates(II)V

    goto :goto_7

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

    :catch_0
    move-exception v9

    goto/16 :goto_3

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

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x1d -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private jjMoveNfa_1(II)I
    .locals 19

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    const v11, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v12, v15, v17

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v10, v14, :cond_1

    :goto_2
    const v15, 0x7fffffff

    if-eq v11, v15, :cond_3

    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    const v11, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x2

    if-ne v10, v14, :cond_b

    :goto_3
    return p2

    :pswitch_0
    const-wide v15, -0x400000001L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_4

    const/16 v15, 0x15

    if-le v11, v15, :cond_2

    const/16 v11, 0x15

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/16 v15, 0x14

    if-le v11, v15, :cond_2

    const/16 v11, 0x14

    goto :goto_1

    :pswitch_1
    const-wide v15, -0x400000001L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v11, 0x15

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_1

    :cond_7
    :goto_4
    if-ne v10, v14, :cond_6

    goto :goto_2

    :pswitch_2
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_7

    const/16 v11, 0x15

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v2, v15, 0x8

    shr-int/lit8 v3, v2, 0x6

    const-wide/16 v15, 0x1

    and-int/lit8 v17, v2, 0x3f

    shl-long v5, v15, v17

    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v4, v15, 0x6

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v7, v15, v17

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_2

    :cond_a
    :goto_5
    if-ne v10, v14, :cond_9

    goto/16 :goto_2

    :pswitch_3
    invoke-static/range {v2 .. v8}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x15

    if-le v11, v15, :cond_a

    const/16 v11, 0x15

    goto :goto_5

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

    :catch_0
    move-exception v9

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private jjMoveNfa_2(II)I
    .locals 19

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    const v7, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v8, v15, v17

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v4, v14, :cond_1

    :goto_2
    const v15, 0x7fffffff

    if-eq v7, v15, :cond_3

    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    const v7, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x1

    if-ne v4, v14, :cond_9

    :goto_3
    return p2

    :pswitch_0
    const-wide v15, 0x800400000000L

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v7, 0x16

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v8, v15, v17

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_1

    :cond_6
    :goto_4
    if-ne v4, v14, :cond_5

    goto :goto_2

    :pswitch_1
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    const/16 v7, 0x16

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v3, v15, 0x8

    shr-int/lit8 v5, v3, 0x6

    const-wide/16 v15, 0x1

    and-int/lit8 v17, v3, 0x3f

    shl-long v10, v15, v17

    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v6, v15, 0x6

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    if-ne v4, v14, :cond_8

    goto/16 :goto_2

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

    :catch_0
    move-exception v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private jjMoveNfa_3(II)I
    .locals 19

    const/4 v14, 0x0

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    const v7, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v8, v15, v17

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v4, v14, :cond_1

    :goto_2
    const v15, 0x7fffffff

    if-eq v7, v15, :cond_3

    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    const v7, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x4

    if-ne v4, v14, :cond_9

    :goto_3
    return p2

    :pswitch_0
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_1
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_2
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

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

    :pswitch_3
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v15, 0x19

    if-le v7, v15, :cond_2

    const/16 v7, 0x19

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v8, v15, v17

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_1

    :cond_6
    :goto_4
    if-ne v4, v14, :cond_5

    goto/16 :goto_2

    :pswitch_4
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

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

    :pswitch_5
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

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

    :pswitch_6
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

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

    :pswitch_7
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    const/16 v15, 0x19

    if-le v7, v15, :cond_6

    const/16 v7, 0x19

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v3, v15, 0x8

    shr-int/lit8 v5, v3, 0x6

    const-wide/16 v15, 0x1

    and-int/lit8 v17, v3, 0x3f

    shl-long v10, v15, v17

    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v6, v15, 0x6

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    if-ne v4, v14, :cond_8

    goto/16 :goto_2

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

    :catch_0
    move-exception v2

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

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

    const/4 v2, 0x0

    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x12

    const/16 v1, 0x2b

    invoke-direct {p0, v2, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1d

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x21

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x1e

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_6
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_7
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x1f

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x20

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_a
    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x1b

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x1c

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

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

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x17

    invoke-direct {p0, v1, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x75
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa1_0(J)I
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_0

    invoke-direct {p0, v2, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_0
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_1
    const-wide/16 v1, 0x100

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_2
    const-wide/16 v1, 0x200

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_3
    const-wide/16 v1, 0x80

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

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

    const-wide/16 v5, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x1

    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    :sswitch_0
    const-wide/16 v2, 0x100

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_2
    const-wide/16 v1, 0x80

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_3
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

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

    const-wide/16 v5, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x2

    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    :sswitch_0
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_2
    const-wide/16 v2, 0x80

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6c -> :sswitch_2
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa4_0(JJ)I
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x3

    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    :sswitch_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    const/16 v2, 0x1a

    invoke-direct {p0, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa5_0(JJ)I
    .locals 4

    const/4 v3, 0x4

    and-long/2addr p3, p1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_0

    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    const/4 v1, 0x5

    goto :goto_0

    :pswitch_0
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_0(JJ)I
    .locals 4

    const/4 v3, 0x5

    and-long/2addr p3, p1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_0

    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_0
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa7_0(JJ)I
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v1, 0x7

    const/4 v4, 0x6

    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    :pswitch_0
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x79
        :pswitch_0
    .end packed-switch
.end method

.method private jjStartNfaWithStates_0(III)I
    .locals 2

    iput p2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private jjStopAtPos(II)I
    .locals 1

    iput p2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 9

    const-wide/16 v7, 0x200

    const/16 v6, 0xb

    const/4 v1, -0x1

    const/16 v0, 0xa

    const-wide/16 v4, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const-wide/16 v2, 0x380

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/16 v0, 0x2b

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    const-wide/16 v2, 0x380

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    const-wide/16 v2, 0x100

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0x280

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_3
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_4
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_5
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0

    :pswitch_6
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0

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

    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public ReInit(Lcom/htc/gson/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    iput-object p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lcom/htc/gson/SimpleCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInit(Lcom/htc/gson/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

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

    :cond_1
    iput p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    return-void
.end method

.method public getNextToken()Lcom/htc/gson/Token;
    .locals 15

    const/4 v8, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_1

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V

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

    invoke-virtual {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjFillToken()Lcom/htc/gson/Token;

    move-result-object v11

    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    :cond_2
    move-object v12, v11

    :goto_3
    return-object v12

    :catch_0
    move-exception v9

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjFillToken()Lcom/htc/gson/Token;

    move-result-object v11

    move-object v12, v11

    goto :goto_3

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V

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

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v10

    goto/16 :goto_0

    :cond_3
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v8

    goto/16 :goto_2

    :pswitch_1
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v8

    goto/16 :goto_2

    :pswitch_2
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v8

    goto/16 :goto_2

    :pswitch_3
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v8

    goto/16 :goto_2

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

    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    :cond_6
    const/4 v8, 0x0

    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    :try_start_2
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :cond_7
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->getEndColumn()I

    move-result v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    if-nez v1, :cond_8

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V

    const/4 v0, 0x1

    if-gt v8, v0, :cond_c

    const-string v5, ""

    :cond_8
    :goto_6
    new-instance v0, Lcom/htc/gson/TokenMgrError;

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    iget-char v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/gson/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_3
    move-exception v10

    const/4 v1, 0x1

    const/4 v0, 0x1

    if-gt v8, v0, :cond_a

    const-string v5, ""

    :goto_7
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0xd

    if-ne v0, v2, :cond_b

    :cond_9
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

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

    sget-object v7, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v8, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget-object v5, v7, v8

    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getBeginLine()I

    move-result v1

    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getBeginColumn()I

    move-result v0

    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getEndLine()I

    move-result v4

    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getEndColumn()I

    move-result v3

    iget v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    invoke-static {v7, v2}, Lcom/htc/gson/Token;->newToken(ILjava/lang/String;)Lcom/htc/gson/Token;

    move-result-object v6

    iput v1, v6, Lcom/htc/gson/Token;->beginLine:I

    iput v4, v6, Lcom/htc/gson/Token;->endLine:I

    iput v0, v6, Lcom/htc/gson/Token;->beginColumn:I

    iput v3, v6, Lcom/htc/gson/Token;->endColumn:I

    return-object v6

    :cond_0
    move-object v2, v5

    goto :goto_0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
