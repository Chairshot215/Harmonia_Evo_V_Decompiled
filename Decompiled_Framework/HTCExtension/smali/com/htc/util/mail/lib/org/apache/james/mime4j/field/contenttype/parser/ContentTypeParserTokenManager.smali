.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
.super Ljava/lang/Object;
.source "ContentTypeParserTokenManager.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;


# static fields
.field static commentNest:I

.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

.field jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field lengthOfMatch:I


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

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    new-array v0, v4, [I

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "/"

    aput-object v2, v0, v1

    const-string v1, ";"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

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

    aput-object v3, v0, v1

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

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    const-wide/32 v1, 0x38003f

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x140

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x40

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J

    new-array v0, v5, [J

    const-wide/32 v1, 0x7fe80

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoMore:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    const v2, -0x7fffffff

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const/4 v0, 0x3

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 4

    :goto_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2

    :goto_0
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_b

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_12

    :goto_3
    return p2

    :pswitch_0
    const-wide v9, 0x3ff6cfafffffdffL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    const/16 v9, 0x15

    if-le v3, v9, :cond_4

    const/16 v3, 0x15

    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    :cond_5
    :goto_4
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v9, 0x14

    if-le v3, v9, :cond_6

    const/16 v3, 0x14

    :cond_6
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_7
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    const/4 v9, 0x6

    if-le v3, v9, :cond_8

    const/4 v3, 0x6

    :cond_8
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :pswitch_1
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/4 v3, 0x6

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_2
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v9, 0x14

    if-le v3, v9, :cond_9

    const/16 v3, 0x14

    :cond_9
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_3
    const-wide v9, 0x3ff6cfafffffdffL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v9, 0x15

    if-le v3, v9, :cond_a

    const/16 v3, 0x15

    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :cond_b
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_e

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_c
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    :pswitch_4
    const-wide/32 v9, -0x38000002

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v3, 0x15

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :cond_e
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_f
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    :cond_10
    :goto_6
    if-ne v1, v8, :cond_f

    goto/16 :goto_2

    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_10

    const/16 v9, 0x15

    if-le v3, v9, :cond_11

    const/16 v3, 0x15

    :cond_11
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    :cond_12
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    :goto_3
    return p2

    :pswitch_0
    const/16 v9, 0xb

    if-le v3, v9, :cond_2

    const/16 v3, 0xb

    goto :goto_1

    :pswitch_1
    const/16 v9, 0x9

    if-le v3, v9, :cond_2

    const/16 v3, 0x9

    goto :goto_1

    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    :pswitch_2
    const/16 v9, 0xb

    if-le v3, v9, :cond_7

    const/16 v3, 0xb

    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    :pswitch_3
    const/16 v9, 0x9

    if-le v3, v9, :cond_6

    const/16 v3, 0x9

    goto :goto_4

    :pswitch_4
    const/16 v9, 0xb

    if-le v3, v9, :cond_6

    const/16 v3, 0xb

    goto :goto_4

    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xb

    if-le v3, v9, :cond_a

    const/16 v3, 0xb

    goto :goto_5

    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x9

    if-le v3, v9, :cond_a

    const/16 v3, 0x9

    goto :goto_5

    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    :goto_3
    return p2

    :pswitch_0
    const/16 v9, 0xf

    if-le v3, v9, :cond_2

    const/16 v3, 0xf

    goto :goto_1

    :pswitch_1
    const/16 v9, 0xc

    if-le v3, v9, :cond_2

    const/16 v3, 0xc

    goto :goto_1

    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    :pswitch_2
    const/16 v9, 0xf

    if-le v3, v9, :cond_7

    const/16 v3, 0xf

    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    :pswitch_3
    const/16 v9, 0xc

    if-le v3, v9, :cond_6

    const/16 v3, 0xc

    goto :goto_4

    :pswitch_4
    const/16 v9, 0xf

    if-le v3, v9, :cond_6

    const/16 v3, 0xf

    goto :goto_4

    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xf

    if-le v3, v9, :cond_a

    const/16 v3, 0xf

    goto :goto_5

    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xc

    if-le v3, v9, :cond_a

    const/16 v3, 0xc

    goto :goto_5

    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_3(II)I
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_f

    :goto_3
    return p2

    :pswitch_0
    const-wide v9, -0x400000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v9, 0x12

    if-le v3, v9, :cond_4

    const/16 v3, 0x12

    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_1
    const/16 v9, 0x11

    if-le v3, v9, :cond_2

    const/16 v3, 0x11

    goto :goto_1

    :cond_5
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_6
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    :pswitch_2
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    const/16 v9, 0x12

    if-le v3, v9, :cond_8

    const/16 v3, 0x12

    :cond_8
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_9
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    :pswitch_3
    const/16 v9, 0x11

    if-le v3, v9, :cond_7

    const/16 v3, 0x11

    goto :goto_4

    :pswitch_4
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    const/16 v9, 0x12

    if-le v3, v9, :cond_a

    const/16 v3, 0x12

    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_b
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_c
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0x12

    if-le v3, v9, :cond_e

    const/16 v3, 0x12

    :cond_e
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0x11

    if-le v3, v9, :cond_d

    const/16 v3, 0x11

    goto :goto_5

    :cond_f
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0, v1, v2, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2f -> :sswitch_4
        0x3b -> :sswitch_5
        0x3d -> :sswitch_6
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xe

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 2

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_1(III)I
    .locals 2

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_2(III)I
    .locals 2

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_3(III)I
    .locals 2

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

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

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1

    const/4 v0, -0x1

    return v0
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

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    sput v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_5
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_6
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_7
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;)V
    .locals 4

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 17

    const/4 v14, 0x0

    const/4 v9, 0x0

    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    :cond_1
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v12

    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->TokenLexicalActions(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;)V

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    :goto_3
    return-object v13

    :catch_0
    move-exception v10

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v12

    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-object v13, v12

    goto :goto_3

    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    goto :goto_2

    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    goto/16 :goto_2

    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    goto/16 :goto_2

    :pswitch_3
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v9

    goto/16 :goto_2

    :cond_3
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v12

    if-nez v14, :cond_5

    move-object v14, v12

    :cond_4
    :goto_4
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    goto/16 :goto_0

    :cond_5
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v12, v14, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-object v14, v12

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->MoreLexicalActions()V

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    :cond_7
    const/4 v9, 0x0

    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    :cond_9
    :goto_6
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    :catch_2
    move-exception v11

    const/4 v2, 0x1

    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    :cond_a
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 4

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->newToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    sget-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->beginLine:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->beginColumn:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->endLine:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->endColumn:I

    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
