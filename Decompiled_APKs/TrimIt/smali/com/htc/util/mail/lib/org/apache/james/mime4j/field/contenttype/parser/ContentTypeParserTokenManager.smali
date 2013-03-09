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

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 109
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    .line 602
    new-array v0, v4, [I

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    .line 604
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

    .line 607
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

    .line 613
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    .line 616
    new-array v0, v5, [J

    const-wide/32 v1, 0x38003f

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J

    .line 619
    new-array v0, v5, [J

    const-wide/16 v1, 0x140

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J

    .line 622
    new-array v0, v5, [J

    const-wide/16 v1, 0x40

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J

    .line 625
    new-array v0, v5, [J

    const-wide/32 v1, 0x7fe80

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoMore:[J

    return-void

    .line 109
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 613
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
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 629
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    .line 630
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    .line 684
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 685
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->defaultLexState:I

    .line 638
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    .line 639
    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    .line 642
    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    .line 643
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 654
    const v2, -0x7fffffff

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    .line 655
    const/4 v0, 0x3

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 656
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 657
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
    .line 90
    :goto_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 91
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 92
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
    .line 81
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 84
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 86
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .parameter "start"

    .prologue
    .line 106
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 107
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 108
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 101
    :goto_0
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 102
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 103
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
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 96
    invoke-direct {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 97
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 115
    const/4 v8, 0x0

    .line 116
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 117
    const/4 v1, 0x1

    .line 118
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 119
    const v3, 0x7fffffff

    .line 122
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 124
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_b

    .line 126
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 129
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 173
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 213
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 215
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 216
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 217
    const v3, 0x7fffffff

    .line 219
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 220
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_12

    .line 223
    :goto_3
    return p2

    .line 132
    .restart local v4       #l:J
    :pswitch_0
    const-wide v9, 0x3ff6cfafffffdffL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 134
    const/16 v9, 0x15

    if-le v3, v9, :cond_4

    .line 135
    const/16 v3, 0x15

    .line 136
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    .line 144
    :cond_5
    :goto_4
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 146
    const/16 v9, 0x14

    if-le v3, v9, :cond_6

    .line 147
    const/16 v3, 0x14

    .line 148
    :cond_6
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 138
    :cond_7
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 140
    const/4 v9, 0x6

    if-le v3, v9, :cond_8

    .line 141
    const/4 v3, 0x6

    .line 142
    :cond_8
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 152
    :pswitch_1
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 154
    const/4 v3, 0x6

    .line 155
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 158
    :pswitch_2
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 160
    const/16 v9, 0x14

    if-le v3, v9, :cond_9

    .line 161
    const/16 v3, 0x14

    .line 162
    :cond_9
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 165
    :pswitch_3
    const-wide v9, 0x3ff6cfafffffdffL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 167
    const/16 v9, 0x15

    if-le v3, v9, :cond_a

    .line 168
    const/16 v3, 0x15

    .line 169
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 175
    .end local v4           #l:J
    :cond_b
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_e

    .line 177
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 180
    .restart local v4       #l:J
    :cond_c
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 191
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 184
    :pswitch_4
    const-wide/32 v9, -0x38000002

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 186
    const/16 v3, 0x15

    .line 187
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 195
    .end local v4           #l:J
    :cond_e
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 196
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 199
    .local v6, l2:J
    :cond_f
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 211
    :cond_10
    :goto_6
    if-ne v1, v8, :cond_f

    goto/16 :goto_2

    .line 203
    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_10

    .line 205
    const/16 v9, 0x15

    if-le v3, v9, :cond_11

    .line 206
    const/16 v3, 0x15

    .line 207
    :cond_11
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    .line 222
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_12
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 199
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 261
    const/4 v8, 0x0

    .line 262
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 263
    const/4 v1, 0x1

    .line 264
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 265
    const v3, 0x7fffffff

    .line 268
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 270
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 272
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 275
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 287
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 334
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 336
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 337
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 338
    const v3, 0x7fffffff

    .line 340
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 341
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 344
    :goto_3
    return p2

    .line 278
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0xb

    if-le v3, v9, :cond_2

    .line 279
    const/16 v3, 0xb

    goto :goto_1

    .line 282
    :pswitch_1
    const/16 v9, 0x9

    if-le v3, v9, :cond_2

    .line 283
    const/16 v3, 0x9

    goto :goto_1

    .line 289
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 291
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 294
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 312
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 297
    :pswitch_2
    const/16 v9, 0xb

    if-le v3, v9, :cond_7

    .line 298
    const/16 v3, 0xb

    .line 299
    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 300
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 303
    :pswitch_3
    const/16 v9, 0x9

    if-le v3, v9, :cond_6

    .line 304
    const/16 v3, 0x9

    goto :goto_4

    .line 307
    :pswitch_4
    const/16 v9, 0xb

    if-le v3, v9, :cond_6

    .line 308
    const/16 v3, 0xb

    goto :goto_4

    .line 316
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 317
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 320
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 332
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 323
    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xb

    if-le v3, v9, :cond_a

    .line 324
    const/16 v3, 0xb

    goto :goto_5

    .line 327
    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x9

    if-le v3, v9, :cond_a

    .line 328
    const/16 v3, 0x9

    goto :goto_5

    .line 343
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 344
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 294
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 320
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
    .line 516
    const/4 v8, 0x0

    .line 517
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 518
    const/4 v1, 0x1

    .line 519
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 520
    const v3, 0x7fffffff

    .line 523
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 524
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 525
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 527
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 530
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 542
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 589
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 591
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 592
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 593
    const v3, 0x7fffffff

    .line 595
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 596
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 599
    :goto_3
    return p2

    .line 533
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0xf

    if-le v3, v9, :cond_2

    .line 534
    const/16 v3, 0xf

    goto :goto_1

    .line 537
    :pswitch_1
    const/16 v9, 0xc

    if-le v3, v9, :cond_2

    .line 538
    const/16 v3, 0xc

    goto :goto_1

    .line 544
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 546
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 549
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 567
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 552
    :pswitch_2
    const/16 v9, 0xf

    if-le v3, v9, :cond_7

    .line 553
    const/16 v3, 0xf

    .line 554
    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 555
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 558
    :pswitch_3
    const/16 v9, 0xc

    if-le v3, v9, :cond_6

    .line 559
    const/16 v3, 0xc

    goto :goto_4

    .line 562
    :pswitch_4
    const/16 v9, 0xf

    if-le v3, v9, :cond_6

    .line 563
    const/16 v3, 0xf

    goto :goto_4

    .line 571
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 572
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 575
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 587
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 578
    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xf

    if-le v3, v9, :cond_a

    .line 579
    const/16 v3, 0xf

    goto :goto_5

    .line 582
    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xc

    if-le v3, v9, :cond_a

    .line 583
    const/16 v3, 0xc

    goto :goto_5

    .line 598
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 599
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 549
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 575
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_3(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 380
    const/4 v8, 0x0

    .line 381
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    .line 382
    const/4 v1, 0x1

    .line 383
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 384
    const v3, 0x7fffffff

    .line 387
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 389
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 391
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 394
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 410
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 468
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 470
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 471
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 472
    const v3, 0x7fffffff

    .line 474
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 475
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_f

    .line 478
    :goto_3
    return p2

    .line 398
    .restart local v4       #l:J
    :pswitch_0
    const-wide v9, -0x400000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 400
    const/16 v9, 0x12

    if-le v3, v9, :cond_4

    .line 401
    const/16 v3, 0x12

    .line 402
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 405
    :pswitch_1
    const/16 v9, 0x11

    if-le v3, v9, :cond_2

    .line 406
    const/16 v3, 0x11

    goto :goto_1

    .line 412
    .end local v4           #l:J
    :cond_5
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 414
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 417
    .restart local v4       #l:J
    :cond_6
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 442
    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 420
    :pswitch_2
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 422
    const/16 v9, 0x12

    if-le v3, v9, :cond_8

    .line 423
    const/16 v3, 0x12

    .line 424
    :cond_8
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 426
    :cond_9
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    .line 427
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 430
    :pswitch_3
    const/16 v9, 0x11

    if-le v3, v9, :cond_7

    .line 431
    const/16 v3, 0x11

    goto :goto_4

    .line 434
    :pswitch_4
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 436
    const/16 v9, 0x12

    if-le v3, v9, :cond_a

    .line 437
    const/16 v3, 0x12

    .line 438
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 446
    .end local v4           #l:J
    :cond_b
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 447
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 450
    .local v6, l2:J
    :cond_c
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 466
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 454
    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 456
    const/16 v9, 0x12

    if-le v3, v9, :cond_e

    .line 457
    const/16 v3, 0x12

    .line 458
    :cond_e
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 461
    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0x11

    if-le v3, v9, :cond_d

    .line 462
    const/16 v3, 0x11

    goto :goto_5

    .line 477
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_f
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 478
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 417
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 450
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 59
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 76
    invoke-direct {p0, v3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 62
    :sswitch_0
    invoke-direct {p0, v1, v2, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 64
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 66
    :sswitch_2
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 68
    :sswitch_3
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 70
    :sswitch_4
    invoke-direct {p0, v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 72
    :sswitch_5
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 74
    :sswitch_6
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 59
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

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 255
    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 251
    :pswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 253
    :pswitch_1
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 248
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

    .line 503
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 510
    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 506
    :pswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 508
    :pswitch_1
    const/16 v0, 0xe

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 374
    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 372
    :pswitch_0
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 51
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 52
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 54
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
    .line 240
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 241
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 243
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
    .line 495
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 496
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 498
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_3(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 361
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 362
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_0
    return v1

    .line 364
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
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 236
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 491
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 357
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 45
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 46
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 47
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 33
    .line 36
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 228
    .line 231
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 483
    .line 486
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 349
    .line 352
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 807
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 808
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 862
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 811
    :pswitch_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 812
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 814
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 815
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 818
    :pswitch_2
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 819
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 821
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 822
    sput v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    goto :goto_0

    .line 825
    :pswitch_3
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 826
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 827
    :cond_3
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 828
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 829
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 832
    :pswitch_4
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 833
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 834
    :cond_4
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 835
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 836
    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 839
    :pswitch_5
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 840
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 841
    :cond_5
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 842
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 843
    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 846
    :pswitch_6
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 847
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 848
    :cond_6
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 849
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 850
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 853
    :pswitch_7
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    .line 854
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 855
    :cond_7
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 856
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 857
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 808
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
    .parameter "stream"

    .prologue
    .line 646
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 647
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 648
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    .line 649
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    .line 650
    return-void
.end method

.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    .line 661
    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    .line 662
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 665
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 666
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

    .line 668
    :cond_1
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 669
    return-void
.end method

.method TokenLexicalActions(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;)V
    .locals 4
    .parameter "matchedToken"

    .prologue
    .line 865
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 876
    :goto_0
    return-void

    .line 868
    :pswitch_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 869
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 870
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

    .line 871
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

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 17

    .prologue
    .line 694
    const/4 v14, 0x0

    .line 696
    .local v14, specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    const/4 v9, 0x0

    .line 703
    .local v9, curPos:I
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

    .line 712
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 713
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    .line 717
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 740
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 742
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 743
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    .line 744
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

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v12

    .line 747
    .local v12, matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 748
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->TokenLexicalActions(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;)V

    .line 749
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 750
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 751
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .local v13, matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :goto_3
    return-object v13

    .line 705
    .end local v13           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :catch_0
    move-exception v10

    .line 707
    .local v10, e:Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v12

    .line 709
    .restart local v12       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-object v13, v12

    .line 710
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    .restart local v13       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    goto :goto_3

    .line 720
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 721
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 722
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 723
    goto :goto_2

    .line 725
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 726
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 727
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 728
    goto/16 :goto_2

    .line 730
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 731
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    .line 733
    goto/16 :goto_2

    .line 735
    :pswitch_3
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 736
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    .line 737
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v9

    goto/16 :goto_2

    .line 753
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

    .line 755
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

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v12

    .line 758
    .restart local v12       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    if-nez v14, :cond_5

    .line 759
    move-object v14, v12

    .line 766
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 767
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 762
    .restart local v12       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :cond_5
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    .line 763
    iput-object v12, v14, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 770
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->MoreLexicalActions()V

    .line 771
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 772
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    .line 773
    :cond_7
    const/4 v9, 0x0

    .line 774
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    .line 776
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

    .line 779
    :catch_1
    move-exception v1

    .line 781
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 782
    .local v4, error_line:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 783
    .local v5, error_column:I
    const/4 v6, 0x0

    .line 784
    .local v6, error_after:Ljava/lang/String;
    const/4 v2, 0x0

    .line 785
    .local v2, EOFSeen:Z
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

    .line 796
    :goto_5
    if-nez v2, :cond_9

    .line 797
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    .line 798
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    .line 800
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

    .line 786
    :catch_2
    move-exception v11

    .line 787
    .local v11, e1:Ljava/io/IOException;
    const/4 v2, 0x1

    .line 788
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 789
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 790
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 791
    const/4 v5, 0x0

    goto :goto_5

    .line 788
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 794
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 798
    .end local v11           #e1:Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 717
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

    .prologue
    .line 673
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->newToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    .line 674
    .local v1, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    .line 675
    sget-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 676
    .local v0, im:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0           #im:Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    .line 677
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->beginLine:I

    .line 678
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->beginColumn:I

    .line 679
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->endLine:I

    .line 680
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/Token;->endColumn:I

    .line 681
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
