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

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 422
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    .line 635
    new-array v0, v4, [I

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    .line 637
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

    .line 646
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 651
    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    .line 655
    new-array v0, v5, [J

    const-wide v1, 0x400fffffffffL

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    .line 658
    new-array v0, v5, [J

    const-wide v1, 0x5000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    .line 661
    new-array v0, v5, [J

    const-wide v1, 0x1000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    .line 664
    new-array v0, v5, [J

    const-wide v1, 0x3fa000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoMore:[J

    return-void

    .line 422
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 651
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
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 668
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    .line 669
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    .line 723
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 724
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I

    .line 677
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .line 678
    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    .line 681
    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    .line 682
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 693
    const v2, -0x7fffffff

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 694
    const/4 v0, 0x4

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 695
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 696
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 277
    :goto_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 278
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 279
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 271
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 273
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .parameter "start"

    .prologue
    .line 293
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 294
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 295
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 288
    :goto_0
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 289
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 290
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0
    .parameter "state1"
    .parameter "state2"

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 283
    invoke-direct {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 284
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 299
    const/4 v8, 0x0

    .line 300
    .local v8, startsAt:I
    const/4 v9, 0x4

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 301
    const/4 v1, 0x1

    .line 302
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 303
    const v3, 0x7fffffff

    .line 306
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 308
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_8

    .line 310
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 313
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 348
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v1, v8, :cond_1

    .line 377
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 379
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 380
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 381
    const v3, 0x7fffffff

    .line 383
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 384
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x4

    if-ne v1, v8, :cond_d

    .line 387
    :goto_3
    return p2

    .line 316
    .restart local v4       #l:J
    :pswitch_1
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 318
    const/16 v9, 0x2e

    if-le v3, v9, :cond_4

    .line 319
    const/16 v3, 0x2e

    .line 320
    :cond_4
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 322
    :cond_5
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 324
    const/16 v9, 0x24

    if-le v3, v9, :cond_6

    .line 325
    const/16 v3, 0x24

    .line 326
    :cond_6
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 328
    :cond_7
    const-wide v9, 0x280000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 330
    const/16 v9, 0x18

    if-le v3, v9, :cond_2

    .line 331
    const/16 v3, 0x18

    goto :goto_1

    .line 335
    :pswitch_2
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 337
    const/16 v3, 0x24

    .line 338
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 341
    :pswitch_3
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 343
    const/16 v3, 0x2e

    .line 344
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 350
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 352
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 355
    .restart local v4       #l:J
    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 363
    :cond_a
    :goto_4
    if-ne v1, v8, :cond_9

    goto/16 :goto_2

    .line 358
    :pswitch_4
    const-wide v9, 0x7fffbfe07fffbfeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    .line 359
    const/16 v3, 0x23

    goto :goto_4

    .line 367
    .end local v4           #l:J
    :cond_b
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 368
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 371
    .local v6, l2:J
    :cond_c
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    .line 375
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 386
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_d
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 387
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 355
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 428
    const/4 v8, 0x0

    .line 429
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 430
    const/4 v1, 0x1

    .line 431
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 432
    const v3, 0x7fffffff

    .line 435
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 437
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 439
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 442
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 454
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 501
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 503
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 504
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 505
    const v3, 0x7fffffff

    .line 507
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 508
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 511
    :goto_3
    return p2

    .line 445
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x29

    if-le v3, v9, :cond_2

    .line 446
    const/16 v3, 0x29

    goto :goto_1

    .line 449
    :pswitch_1
    const/16 v9, 0x27

    if-le v3, v9, :cond_2

    .line 450
    const/16 v3, 0x27

    goto :goto_1

    .line 456
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 458
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 461
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 479
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 464
    :pswitch_2
    const/16 v9, 0x29

    if-le v3, v9, :cond_7

    .line 465
    const/16 v3, 0x29

    .line 466
    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 467
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 470
    :pswitch_3
    const/16 v9, 0x27

    if-le v3, v9, :cond_6

    .line 471
    const/16 v3, 0x27

    goto :goto_4

    .line 474
    :pswitch_4
    const/16 v9, 0x29

    if-le v3, v9, :cond_6

    .line 475
    const/16 v3, 0x29

    goto :goto_4

    .line 483
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 484
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 487
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 499
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 490
    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x29

    if-le v3, v9, :cond_a

    .line 491
    const/16 v3, 0x29

    goto :goto_5

    .line 494
    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x27

    if-le v3, v9, :cond_a

    .line 495
    const/16 v3, 0x27

    goto :goto_5

    .line 510
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 511
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 461
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 487
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 549
    const/4 v8, 0x0

    .line 550
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 551
    const/4 v1, 0x1

    .line 552
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 553
    const v3, 0x7fffffff

    .line 556
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 558
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 560
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 563
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 575
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 622
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 624
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 625
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 626
    const v3, 0x7fffffff

    .line 628
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 629
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 632
    :goto_3
    return p2

    .line 566
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x2d

    if-le v3, v9, :cond_2

    .line 567
    const/16 v3, 0x2d

    goto :goto_1

    .line 570
    :pswitch_1
    const/16 v9, 0x2a

    if-le v3, v9, :cond_2

    .line 571
    const/16 v3, 0x2a

    goto :goto_1

    .line 577
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 579
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 582
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 600
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 585
    :pswitch_2
    const/16 v9, 0x2d

    if-le v3, v9, :cond_7

    .line 586
    const/16 v3, 0x2d

    .line 587
    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 588
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 591
    :pswitch_3
    const/16 v9, 0x2a

    if-le v3, v9, :cond_6

    .line 592
    const/16 v3, 0x2a

    goto :goto_4

    .line 595
    :pswitch_4
    const/16 v9, 0x2d

    if-le v3, v9, :cond_6

    .line 596
    const/16 v3, 0x2d

    goto :goto_4

    .line 604
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 605
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 608
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 620
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 611
    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x2d

    if-le v3, v9, :cond_a

    .line 612
    const/16 v3, 0x2d

    goto :goto_5

    .line 615
    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x2a

    if-le v3, v9, :cond_a

    .line 616
    const/16 v3, 0x2a

    goto :goto_5

    .line 631
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 632
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 582
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 608
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 121
    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 81
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 83
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 85
    :sswitch_2
    const/16 v0, 0x25

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 87
    :sswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 89
    :sswitch_4
    const/16 v0, 0x17

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 91
    :sswitch_5
    const-wide/32 v0, 0x44000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 93
    :sswitch_6
    const-wide/32 v0, 0x60000000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 95
    :sswitch_7
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 97
    :sswitch_8
    const-wide/32 v0, 0x18000000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 99
    :sswitch_9
    const-wide/16 v0, 0x1100

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 101
    :sswitch_a
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 103
    :sswitch_b
    const-wide/32 v0, 0x30800

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 105
    :sswitch_c
    const-wide v0, 0x18000a010L

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 107
    :sswitch_d
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 109
    :sswitch_e
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 111
    :sswitch_f
    const-wide v0, 0x600000000L

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 113
    :sswitch_10
    const-wide/32 v0, 0x80600

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 115
    :sswitch_11
    const-wide/16 v0, 0xa0

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 117
    :sswitch_12
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 119
    :sswitch_13
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_0

    .line 78
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

    .prologue
    const/4 v1, 0x0

    .line 412
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 419
    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 415
    :pswitch_0
    const/16 v0, 0x28

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 417
    :pswitch_1
    const/16 v0, 0x26

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 536
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 543
    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 539
    :pswitch_0
    const/16 v0, 0x2b

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 541
    :pswitch_1
    const/16 v0, 0x2c

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa1_0(J)I
    .locals 7
    .parameter "active0"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    iget-char v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 162
    :cond_0
    invoke-direct {p0, v6, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v6, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide v1, 0x550000000L

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 136
    :sswitch_1
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 138
    :sswitch_2
    const-wide v1, 0x2a8000000L

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 140
    :sswitch_3
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 141
    const/16 v2, 0x19

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 144
    :sswitch_4
    const-wide/32 v1, 0xaa00

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 146
    :sswitch_5
    const-wide/32 v1, 0x100000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 148
    :sswitch_6
    const-wide/32 v1, 0x481040

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 150
    :sswitch_7
    const-wide/16 v1, 0x80

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 152
    :sswitch_8
    const-wide/32 v1, 0x200010

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 154
    :sswitch_9
    const-wide/16 v1, 0x4000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 156
    :sswitch_a
    const-wide/16 v1, 0x100

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 158
    :sswitch_b
    const-wide/32 v1, 0x70420

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 131
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
    .parameter "old0"
    .parameter "active0"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x2

    .line 166
    and-long/2addr p3, p1

    cmp-long v2, p3, v4

    if-nez v2, :cond_0

    .line 167
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 168
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    iget-char v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 264
    :cond_1
    invoke-direct {p0, v6, p3, p4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v6, p3, p4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 176
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 177
    const/16 v2, 0x1a

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 178
    :cond_2
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 179
    const/16 v2, 0x1b

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 180
    :cond_3
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 181
    const/16 v2, 0x1c

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 182
    :cond_4
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 183
    const/16 v2, 0x1d

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 184
    :cond_5
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 185
    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 186
    :cond_6
    const-wide v2, 0x80000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 187
    const/16 v2, 0x1f

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 188
    :cond_7
    const-wide v2, 0x100000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 189
    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 190
    :cond_8
    const-wide v2, 0x200000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 191
    const/16 v2, 0x21

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 192
    :cond_9
    const-wide v2, 0x400000000L

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 193
    const/16 v2, 0x22

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 196
    :sswitch_1
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 197
    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 200
    :sswitch_2
    const-wide/32 v2, 0x400000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 201
    const/16 v2, 0x16

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 204
    :sswitch_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 205
    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 208
    :sswitch_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 209
    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 212
    :sswitch_5
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 213
    const/16 v2, 0x12

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 216
    :sswitch_6
    const-wide/16 v2, 0x100

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 217
    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 220
    :sswitch_7
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 221
    const/16 v2, 0x11

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 224
    :sswitch_8
    const-wide/16 v2, 0x10

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 225
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 226
    :cond_a
    const-wide/16 v2, 0x400

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 227
    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 228
    :cond_b
    const-wide/16 v2, 0x800

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 229
    const/16 v2, 0xb

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 230
    :cond_c
    const-wide/32 v2, 0x10000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 231
    const/16 v2, 0x10

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 234
    :sswitch_9
    const-wide/32 v2, 0x80000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 235
    const/16 v2, 0x13

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 238
    :sswitch_a
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    .line 239
    const/16 v2, 0xd

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 240
    :cond_d
    const-wide/16 v2, 0x4000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 241
    const/16 v2, 0xe

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 244
    :sswitch_b
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 245
    const/16 v2, 0x9

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 246
    :cond_e
    const-wide/32 v2, 0x100000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 247
    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 250
    :sswitch_c
    const-wide/16 v2, 0x80

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 251
    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 254
    :sswitch_d
    const-wide/32 v2, 0x200000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 255
    const/16 v2, 0x15

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 258
    :sswitch_e
    const-wide/32 v2, 0x8000

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 259
    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto/16 :goto_0

    .line 173
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
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 70
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 71
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_1(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 404
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 405
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 407
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_2(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 528
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 529
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 531
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
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 524
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 64
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 65
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 66
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 6
    .parameter "pos"
    .parameter "active0"

    .prologue
    const-wide v0, 0x7fe7cf7f0L

    const-wide/16 v4, 0x0

    const/16 v3, 0x23

    const/4 v2, -0x1

    .line 34
    packed-switch p1, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    return v2

    .line 37
    :pswitch_0
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 39
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    goto :goto_0

    .line 44
    :pswitch_1
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 46
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    if-nez v0, :cond_0

    .line 48
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 392
    .line 395
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 516
    .line 519
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 840
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 841
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 881
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 844
    :pswitch_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 845
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 847
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 848
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 851
    :pswitch_2
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 852
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 853
    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 854
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 855
    sput v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto :goto_0

    .line 858
    :pswitch_3
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 859
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 860
    :cond_3
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 861
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 862
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 865
    :pswitch_4
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 866
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 867
    :cond_4
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 868
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 869
    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 872
    :pswitch_5
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 873
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 874
    :cond_5
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 875
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 876
    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 841
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
    .parameter "stream"

    .prologue
    .line 685
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 686
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 687
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .line 688
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 689
    return-void
.end method

.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    .line 700
    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    .line 701
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 704
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 705
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

    .line 707
    :cond_1
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 708
    return-void
.end method

.method public getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .locals 17

    .prologue
    .line 733
    const/4 v14, 0x0

    .line 735
    .local v14, specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    const/4 v9, 0x0

    .line 742
    .local v9, curPos:I
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

    .line 751
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 752
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 756
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 774
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 776
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    .line 778
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

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v12

    .line 781
    .local v12, matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 782
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 783
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 784
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .local v13, matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :goto_3
    return-object v13

    .line 744
    .end local v13           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :catch_0
    move-exception v10

    .line 746
    .local v10, e:Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v12

    .line 748
    .restart local v12       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-object v13, v12

    .line 749
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v13       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    goto :goto_3

    .line 759
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 760
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 761
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 762
    goto :goto_2

    .line 764
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 765
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 766
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 767
    goto/16 :goto_2

    .line 769
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 770
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 771
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    goto/16 :goto_2

    .line 786
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

    .line 788
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

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v12

    .line 791
    .restart local v12       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    if-nez v14, :cond_5

    .line 792
    move-object v14, v12

    .line 799
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 800
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 795
    .restart local v12       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :cond_5
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 796
    iput-object v12, v14, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 803
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->MoreLexicalActions()V

    .line 804
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 805
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 806
    :cond_7
    const/4 v9, 0x0

    .line 807
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 809
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

    .line 812
    :catch_1
    move-exception v1

    .line 814
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 815
    .local v4, error_line:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 816
    .local v5, error_column:I
    const/4 v6, 0x0

    .line 817
    .local v6, error_after:Ljava/lang/String;
    const/4 v2, 0x0

    .line 818
    .local v2, EOFSeen:Z
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

    .line 829
    :goto_5
    if-nez v2, :cond_9

    .line 830
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    .line 831
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    .line 833
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

    .line 819
    :catch_2
    move-exception v11

    .line 820
    .local v11, e1:Ljava/io/IOException;
    const/4 v2, 0x1

    .line 821
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 822
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 823
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 824
    const/4 v5, 0x0

    goto :goto_5

    .line 821
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 827
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 831
    .end local v11           #e1:Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 756
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

    .prologue
    .line 712
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->newToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    .line 713
    .local v1, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    .line 714
    sget-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 715
    .local v0, im:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0           #im:Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 716
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I

    .line 717
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I

    .line 718
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->endLine:I

    .line 719
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->endColumn:I

    .line 720
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
