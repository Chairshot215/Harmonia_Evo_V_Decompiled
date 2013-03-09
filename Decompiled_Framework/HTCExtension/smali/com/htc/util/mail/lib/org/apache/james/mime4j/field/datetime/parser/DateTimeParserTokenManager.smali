.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
.super Ljava/lang/Object;
.source "DateTimeParserTokenManager.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;


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

.field protected input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

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

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    new-array v0, v4, [I

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v6

    const-string v1, ","

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Mon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Tue"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Wed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Sat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Sun"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "May"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Dec"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string v2, "UT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "GMT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CST"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "MST"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "MDT"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PST"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "PDT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    const-wide v1, 0x400fffffffffL

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    const-wide v1, 0x5000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    const-wide v1, 0x1000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    new-array v0, v5, [J

    const-wide v1, 0x3fa000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoMore:[J

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
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
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

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    const v2, -0x7fffffff

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const/4 v0, 0x4

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

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
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

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

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2

    :goto_0
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x4

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_8

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-ne v1, v8, :cond_1

    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x4

    if-ne v1, v8, :cond_d

    :goto_3
    return p2

    :pswitch_1
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    const/16 v9, 0x2e

    if-le v3, v9, :cond_4

    const/16 v3, 0x2e

    :cond_4
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_5
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    const/16 v9, 0x24

    if-le v3, v9, :cond_6

    const/16 v3, 0x24

    :cond_6
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_7
    const-wide v9, 0x280000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v9, 0x18

    if-le v3, v9, :cond_2

    const/16 v3, 0x18

    goto :goto_1

    :pswitch_2
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v3, 0x24

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_3
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v3, 0x2e

    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    :cond_a
    :goto_4
    if-ne v1, v8, :cond_9

    goto/16 :goto_2

    :pswitch_4
    const-wide v9, 0x7fffbfe07fffbfeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v3, 0x23

    goto :goto_4

    :cond_b
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_c
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    :cond_d
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    :goto_3
    return p2

    :pswitch_0
    const/16 v9, 0x29

    if-le v3, v9, :cond_2

    const/16 v3, 0x29

    goto :goto_1

    :pswitch_1
    const/16 v9, 0x27

    if-le v3, v9, :cond_2

    const/16 v3, 0x27

    goto :goto_1

    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    :pswitch_2
    const/16 v9, 0x29

    if-le v3, v9, :cond_7

    const/16 v3, 0x29

    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    :pswitch_3
    const/16 v9, 0x27

    if-le v3, v9, :cond_6

    const/16 v3, 0x27

    goto :goto_4

    :pswitch_4
    const/16 v9, 0x29

    if-le v3, v9, :cond_6

    const/16 v3, 0x29

    goto :goto_4

    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x29

    if-le v3, v9, :cond_a

    const/16 v3, 0x29

    goto :goto_5

    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x27

    if-le v3, v9, :cond_a

    const/16 v3, 0x27

    goto :goto_5

    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
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

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    const v3, 0x7fffffff

    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    const v3, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    :goto_3
    return p2

    :pswitch_0
    const/16 v9, 0x2d

    if-le v3, v9, :cond_2

    const/16 v3, 0x2d

    goto :goto_1

    :pswitch_1
    const/16 v9, 0x2a

    if-le v3, v9, :cond_2

    const/16 v3, 0x2a

    goto :goto_1

    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    :pswitch_2
    const/16 v9, 0x2d

    if-le v3, v9, :cond_7

    const/16 v3, 0x2d

    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    :pswitch_3
    const/16 v9, 0x2a

    if-le v3, v9, :cond_6

    const/16 v3, 0x2a

    goto :goto_4

    :pswitch_4
    const/16 v9, 0x2d

    if-le v3, v9, :cond_6

    const/16 v3, 0x2d

    goto :goto_4

    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x2d

    if-le v3, v9, :cond_a

    const/16 v3, 0x2d

    goto :goto_5

    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x2a

    if-le v3, v9, :cond_a

    const/16 v3, 0x2a

    goto :goto_5

    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
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

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x25

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x17

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const-wide/32 v0, 0x44000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_6
    const-wide/32 v0, 0x60000000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_7
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_8
    const-wide/32 v0, 0x18000000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_9
    const-wide/16 v0, 0x1100

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_a
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_b
    const-wide/32 v0, 0x30800

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_c
    const-wide v0, 0x18000a010L

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_d
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_e
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_f
    const-wide v0, 0x600000000L

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    :sswitch_10
    const-wide/32 v0, 0x80600

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_11
    const-wide/16 v0, 0xa0

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_12
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_13
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x28 -> :sswitch_2
        0x2c -> :sswitch_3
        0x3a -> :sswitch_4
        0x41 -> :sswitch_5
        0x43 -> :sswitch_6
        0x44 -> :sswitch_7
        0x45 -> :sswitch_8
        0x46 -> :sswitch_9
        0x47 -> :sswitch_a
        0x4a -> :sswitch_b
        0x4d -> :sswitch_c
        0x4e -> :sswitch_d
        0x4f -> :sswitch_e
        0x50 -> :sswitch_f
        0x53 -> :sswitch_10
        0x54 -> :sswitch_11
        0x55 -> :sswitch_12
        0x57 -> :sswitch_13
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x28

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x26

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

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

    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x2b

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x2c

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa1_0(J)I
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_0
    invoke-direct {p0, v6, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v6, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    :sswitch_0
    const-wide v1, 0x550000000L

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_1
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_2
    const-wide v1, 0x2a8000000L

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_3
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :sswitch_4
    const-wide/32 v1, 0xaa00

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_5
    const-wide/32 v1, 0x100000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_6
    const-wide/32 v1, 0x481040

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_7
    const-wide/16 v1, 0x80

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_8
    const-wide/32 v1, 0x200010

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_9
    const-wide/16 v1, 0x4000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_a
    const-wide/16 v1, 0x100

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    :sswitch_b
    const-wide/32 v1, 0x70420

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_2
        0x54 -> :sswitch_3
        0x61 -> :sswitch_4
        0x63 -> :sswitch_5
        0x65 -> :sswitch_6
        0x68 -> :sswitch_7
        0x6f -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x75 -> :sswitch_b
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa2_0(JJ)I
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x2

    and-long/2addr p3, p1

    cmp-long v2, p3, v4

    if-nez v2, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    :cond_1
    invoke-direct {p0, v6, p3, p4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v6, p3, p4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    :sswitch_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x1a

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/16 v2, 0x1b

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :cond_3
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    const/16 v2, 0x1c

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :cond_4
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const/16 v2, 0x1d

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :cond_5
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :cond_6
    const-wide v2, 0x80000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    const/16 v2, 0x1f

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :cond_7
    const-wide v2, 0x100000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :cond_8
    const-wide v2, 0x200000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    const/16 v2, 0x21

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :cond_9
    const-wide v2, 0x400000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x22

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_1
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_2
    const-wide/32 v2, 0x400000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x16

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_5
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_6
    const-wide/16 v2, 0x100

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_7
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_8
    const-wide/16 v2, 0x10

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :cond_a
    const-wide/16 v2, 0x400

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :cond_b
    const-wide/16 v2, 0x800

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    const/16 v2, 0xb

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :cond_c
    const-wide/32 v2, 0x10000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_9
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x13

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_a
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    const/16 v2, 0xd

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :cond_d
    const-wide/16 v2, 0x4000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_b
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    const/16 v2, 0x9

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :cond_e
    const-wide/32 v2, 0x100000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_c
    const-wide/16 v2, 0x80

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_d
    const-wide/32 v2, 0x200000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0x15

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    :sswitch_e
    const-wide/32 v2, 0x8000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_0
        0x62 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x67 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x6e -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x74 -> :sswitch_b
        0x75 -> :sswitch_c
        0x76 -> :sswitch_d
        0x79 -> :sswitch_e
    .end sparse-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 2

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

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

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

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

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

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

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 6

    const-wide v0, 0x7fe7cf7f0L

    const-wide/16 v4, 0x0

    const/16 v3, 0x23

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    goto :goto_0

    :pswitch_1
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    if-nez v0, :cond_0

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
.method MoreLexicalActions()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    sput v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_5
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    return-void
.end method

.method public getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .locals 17

    const/4 v14, 0x0

    const/4 v9, 0x0

    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    :cond_1
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v12

    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    :goto_3
    return-object v13

    :catch_0
    move-exception v10

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v12

    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-object v13, v12

    goto :goto_3

    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    goto :goto_2

    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    goto/16 :goto_2

    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    goto/16 :goto_2

    :cond_3
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v12

    if-nez v14, :cond_5

    move-object v14, v12

    :cond_4
    :goto_4
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    goto/16 :goto_0

    :cond_5
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v12, v14, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-object v14, v12

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->MoreLexicalActions()V

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    :cond_7
    const/4 v9, 0x0

    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    :cond_9
    :goto_6
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    :catch_2
    move-exception v11

    const/4 v2, 0x1

    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    :cond_a
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .locals 4

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->newToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    sget-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->endLine:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->endColumn:I

    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
