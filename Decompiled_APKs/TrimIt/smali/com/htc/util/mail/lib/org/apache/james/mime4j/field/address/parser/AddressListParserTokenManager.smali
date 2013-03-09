.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
.super Ljava/lang/Object;
.source "AddressListParserTokenManager.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserConstants;


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

.field protected input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

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

    .line 244
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    .line 713
    new-array v0, v4, [I

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    .line 715
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, ","

    aput-object v2, v0, v1

    const-string v1, ":"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "."

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

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 719
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INDOMAINLITERAL"

    aput-object v1, v0, v5

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "NESTED_COMMENT"

    aput-object v2, v0, v1

    const-string v1, "INQUOTEDSTRING"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 726
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    .line 730
    new-array v0, v5, [J

    const-wide v1, 0x800443ffL

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    .line 733
    new-array v0, v5, [J

    const-wide/32 v1, 0x100400

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    .line 736
    new-array v0, v5, [J

    const-wide/16 v1, 0x400

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    .line 739
    new-array v0, v5, [J

    const-wide/32 v1, 0x7feb8000

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoMore:[J

    return-void

    .line 244
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 726
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
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 743
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    .line 744
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    .line 798
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 799
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->defaultLexState:I

    .line 752
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 753
    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 756
    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    .line 757
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 768
    const v2, -0x7fffffff

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    .line 769
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

    .line 770
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 771
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
    .line 99
    :goto_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 100
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 101
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
    .line 90
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 93
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 95
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .parameter "start"

    .prologue
    .line 115
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 116
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 117
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 110
    :goto_0
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 111
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 112
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
    .line 104
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 105
    invoke-direct {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 106
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 121
    const/4 v8, 0x0

    .line 122
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 123
    const/4 v1, 0x1

    .line 124
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 125
    const v3, 0x7fffffff

    .line 128
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 130
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_8

    .line 132
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 135
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 166
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 199
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 201
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 202
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 203
    const v3, 0x7fffffff

    .line 205
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 206
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_e

    .line 209
    :goto_3
    return p2

    .line 138
    .restart local v4       #l:J
    :pswitch_0
    const-wide v9, -0x5c00530600000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 140
    const/16 v9, 0xe

    if-le v3, v9, :cond_4

    .line 141
    const/16 v3, 0xe

    .line 142
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 144
    :cond_5
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 146
    const/16 v9, 0xa

    if-le v3, v9, :cond_6

    .line 147
    const/16 v3, 0xa

    .line 148
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 152
    :pswitch_1
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 154
    const/16 v3, 0xa

    .line 155
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 158
    :pswitch_2
    const-wide v9, -0x5c00130600000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 160
    const/16 v9, 0xe

    if-le v3, v9, :cond_7

    .line 161
    const/16 v3, 0xe

    .line 162
    :cond_7
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 168
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_c

    .line 170
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 173
    .restart local v4       #l:J
    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 185
    :cond_a
    :goto_4
    if-ne v1, v8, :cond_9

    goto/16 :goto_2

    .line 177
    :pswitch_3
    const-wide v9, 0x7fffffffc7fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    .line 179
    const/16 v9, 0xe

    if-le v3, v9, :cond_b

    .line 180
    const/16 v3, 0xe

    .line 181
    :cond_b
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 189
    .end local v4           #l:J
    :cond_c
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 190
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 193
    .local v6, l2:J
    :cond_d
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    .line 197
    if-ne v1, v8, :cond_d

    goto/16 :goto_2

    .line 208
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_e
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 173
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 624
    const/4 v8, 0x0

    .line 625
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 626
    const/4 v1, 0x1

    .line 627
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 628
    const v3, 0x7fffffff

    .line 631
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 633
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 635
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 638
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 650
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 700
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 702
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 703
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 704
    const v3, 0x7fffffff

    .line 706
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 707
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 710
    :goto_3
    return p2

    .line 641
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x11

    if-le v3, v9, :cond_2

    .line 642
    const/16 v3, 0x11

    goto :goto_1

    .line 645
    :pswitch_1
    const/16 v9, 0x10

    if-le v3, v9, :cond_2

    .line 646
    const/16 v3, 0x10

    goto :goto_1

    .line 652
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 654
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 657
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 678
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 660
    :pswitch_2
    const-wide/32 v9, -0x38000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 662
    const/16 v9, 0x11

    if-le v3, v9, :cond_6

    .line 663
    const/16 v3, 0x11

    goto :goto_4

    .line 665
    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 666
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 669
    :pswitch_3
    const/16 v9, 0x10

    if-le v3, v9, :cond_6

    .line 670
    const/16 v3, 0x10

    goto :goto_4

    .line 673
    :pswitch_4
    const-wide/32 v9, -0x38000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    const/16 v9, 0x11

    if-le v3, v9, :cond_6

    .line 674
    const/16 v3, 0x11

    goto :goto_4

    .line 682
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 683
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 686
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 698
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto/16 :goto_2

    .line 689
    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x11

    if-le v3, v9, :cond_a

    .line 690
    const/16 v3, 0x11

    goto :goto_5

    .line 693
    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x10

    if-le v3, v9, :cond_a

    .line 694
    const/16 v3, 0x10

    goto :goto_5

    .line 709
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 710
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 657
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 686
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
    .line 250
    const/4 v8, 0x0

    .line 251
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 252
    const/4 v1, 0x1

    .line 253
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 254
    const v3, 0x7fffffff

    .line 257
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 259
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 261
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 264
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 276
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 323
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 325
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 326
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 327
    const v3, 0x7fffffff

    .line 329
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 330
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 333
    :goto_3
    return p2

    .line 267
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x17

    if-le v3, v9, :cond_2

    .line 268
    const/16 v3, 0x17

    goto :goto_1

    .line 271
    :pswitch_1
    const/16 v9, 0x15

    if-le v3, v9, :cond_2

    .line 272
    const/16 v3, 0x15

    goto :goto_1

    .line 278
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 280
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 283
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 301
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 286
    :pswitch_2
    const/16 v9, 0x17

    if-le v3, v9, :cond_7

    .line 287
    const/16 v3, 0x17

    .line 288
    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 289
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 292
    :pswitch_3
    const/16 v9, 0x15

    if-le v3, v9, :cond_6

    .line 293
    const/16 v3, 0x15

    goto :goto_4

    .line 296
    :pswitch_4
    const/16 v9, 0x17

    if-le v3, v9, :cond_6

    .line 297
    const/16 v3, 0x17

    goto :goto_4

    .line 305
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 306
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 309
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 321
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 312
    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x17

    if-le v3, v9, :cond_a

    .line 313
    const/16 v3, 0x17

    goto :goto_5

    .line 316
    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x15

    if-le v3, v9, :cond_a

    .line 317
    const/16 v3, 0x15

    goto :goto_5

    .line 332
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 333
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 283
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 309
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
    .line 505
    const/4 v8, 0x0

    .line 506
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 507
    const/4 v1, 0x1

    .line 508
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 509
    const v3, 0x7fffffff

    .line 512
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 514
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 516
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 519
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 531
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 578
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 580
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 581
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 582
    const v3, 0x7fffffff

    .line 584
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 585
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 588
    :goto_3
    return p2

    .line 522
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x1b

    if-le v3, v9, :cond_2

    .line 523
    const/16 v3, 0x1b

    goto :goto_1

    .line 526
    :pswitch_1
    const/16 v9, 0x18

    if-le v3, v9, :cond_2

    .line 527
    const/16 v3, 0x18

    goto :goto_1

    .line 533
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 535
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 538
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 556
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 541
    :pswitch_2
    const/16 v9, 0x1b

    if-le v3, v9, :cond_7

    .line 542
    const/16 v3, 0x1b

    .line 543
    :cond_7
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 544
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 547
    :pswitch_3
    const/16 v9, 0x18

    if-le v3, v9, :cond_6

    .line 548
    const/16 v3, 0x18

    goto :goto_4

    .line 551
    :pswitch_4
    const/16 v9, 0x1b

    if-le v3, v9, :cond_6

    .line 552
    const/16 v3, 0x1b

    goto :goto_4

    .line 560
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 561
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 564
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 576
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 567
    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x1b

    if-le v3, v9, :cond_a

    .line 568
    const/16 v3, 0x1b

    goto :goto_5

    .line 571
    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x18

    if-le v3, v9, :cond_a

    .line 572
    const/16 v3, 0x18

    goto :goto_5

    .line 587
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 588
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 538
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 564
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_4(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 369
    const/4 v8, 0x0

    .line 370
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 371
    const/4 v1, 0x1

    .line 372
    .local v1, i:I
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 373
    const v3, 0x7fffffff

    .line 376
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 378
    :cond_0
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 380
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 383
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 399
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 457
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 459
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 460
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 461
    const v3, 0x7fffffff

    .line 463
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 464
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_f

    .line 467
    :goto_3
    return p2

    .line 387
    .restart local v4       #l:J
    :pswitch_0
    const-wide v9, -0x400000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 389
    const/16 v9, 0x1e

    if-le v3, v9, :cond_4

    .line 390
    const/16 v3, 0x1e

    .line 391
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 394
    :pswitch_1
    const/16 v9, 0x1d

    if-le v3, v9, :cond_2

    .line 395
    const/16 v3, 0x1d

    goto :goto_1

    .line 401
    .end local v4           #l:J
    :cond_5
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 403
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 406
    .restart local v4       #l:J
    :cond_6
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 431
    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 409
    :pswitch_2
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 411
    const/16 v9, 0x1e

    if-le v3, v9, :cond_8

    .line 412
    const/16 v3, 0x1e

    .line 413
    :cond_8
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 415
    :cond_9
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    .line 416
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 419
    :pswitch_3
    const/16 v9, 0x1d

    if-le v3, v9, :cond_7

    .line 420
    const/16 v3, 0x1d

    goto :goto_4

    .line 423
    :pswitch_4
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 425
    const/16 v9, 0x1e

    if-le v3, v9, :cond_a

    .line 426
    const/16 v3, 0x1e

    .line 427
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 435
    .end local v4           #l:J
    :cond_b
    iget-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 436
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 439
    .local v6, l2:J
    :cond_c
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 455
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 443
    :pswitch_5
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 445
    const/16 v9, 0x1e

    if-le v3, v9, :cond_e

    .line 446
    const/16 v3, 0x1e

    .line 447
    :cond_e
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 450
    :pswitch_6
    sget-object v9, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0x1d

    if-le v3, v9, :cond_d

    .line 451
    const/16 v3, 0x1d

    goto :goto_5

    .line 466
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_f
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 467
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 406
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 439
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 85
    invoke-direct {p0, v2, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 61
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 63
    :sswitch_1
    invoke-direct {p0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 65
    :sswitch_2
    const/16 v0, 0x1c

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 67
    :sswitch_3
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 69
    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 71
    :sswitch_5
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 73
    :sswitch_6
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 75
    :sswitch_7
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 77
    :sswitch_8
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 79
    :sswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 81
    :sswitch_a
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 83
    :sswitch_b
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 58
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2c -> :sswitch_4
        0x2e -> :sswitch_5
        0x3a -> :sswitch_6
        0x3b -> :sswitch_7
        0x3c -> :sswitch_8
        0x3e -> :sswitch_9
        0x40 -> :sswitch_a
        0x5b -> :sswitch_b
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 613
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 618
    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 616
    :pswitch_0
    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 241
    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 237
    :pswitch_0
    const/16 v0, 0x16

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 239
    :pswitch_1
    const/16 v0, 0x14

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 234
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

    .line 492
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 499
    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 495
    :pswitch_0
    const/16 v0, 0x19

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 497
    :pswitch_1
    const/16 v0, 0x1a

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_4()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 358
    iget-char v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 363
    invoke-direct {p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    :goto_0
    return v0

    .line 361
    :pswitch_0
    const/16 v0, 0x1f

    invoke-direct {p0, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 358
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
    .line 50
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 51
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 53
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
    .line 605
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 606
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 608
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
    .line 226
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 227
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 229
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
    .line 484
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 485
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_0
    return v1

    .line 487
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_4(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 350
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 351
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v1

    :goto_0
    return v1

    .line 353
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
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 601
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 480
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_4(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 346
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_4(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 44
    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 45
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 46
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 32
    .line 35
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 593
    .line 596
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 214
    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 472
    .line 475
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_4(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 338
    .line 341
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 926
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 927
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 988
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 930
    :pswitch_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 931
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 933
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 934
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 937
    :pswitch_2
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 938
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 940
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 941
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 944
    :pswitch_3
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 945
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 946
    :cond_3
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 947
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 948
    const/4 v0, 0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto :goto_0

    .line 951
    :pswitch_4
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 952
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 953
    :cond_4
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 954
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 955
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 958
    :pswitch_5
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 959
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 960
    :cond_5
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 961
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 962
    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 965
    :pswitch_6
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 966
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 967
    :cond_6
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 968
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 969
    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    sget v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 972
    :pswitch_7
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    .line 973
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 974
    :cond_7
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 975
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 976
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 979
    :pswitch_8
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8

    .line 980
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 981
    :cond_8
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 982
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 983
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 760
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 761
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 762
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 763
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 764
    return-void
.end method

.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 774
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 775
    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    .line 776
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 779
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 780
    :cond_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 782
    :cond_1
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 783
    return-void
.end method

.method TokenLexicalActions(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;)V
    .locals 4
    .parameter "matchedToken"

    .prologue
    .line 991
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    sparse-switch v0, :sswitch_data_0

    .line 1008
    :goto_0
    return-void

    .line 994
    :sswitch_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 997
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 1000
    :sswitch_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 1001
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 1003
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 991
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .locals 17

    .prologue
    .line 808
    const/4 v14, 0x0

    .line 810
    .local v14, specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    const/4 v9, 0x0

    .line 817
    .local v9, curPos:I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 827
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 831
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 859
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 861
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 863
    :cond_1
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v12

    .line 866
    .local v12, matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 867
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->TokenLexicalActions(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;)V

    .line 868
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 869
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 870
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .local v13, matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :goto_3
    return-object v13

    .line 819
    .end local v13           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :catch_0
    move-exception v10

    .line 821
    .local v10, e:Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v12

    .line 823
    .restart local v12       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-object v13, v12

    .line 824
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .restart local v13       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    goto :goto_3

    .line 834
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 835
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 837
    goto :goto_2

    .line 839
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 840
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 841
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 842
    goto/16 :goto_2

    .line 844
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 845
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    .line 847
    goto/16 :goto_2

    .line 849
    :pswitch_3
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 850
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v9

    .line 852
    goto/16 :goto_2

    .line 854
    :pswitch_4
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 855
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_4()I

    move-result v9

    goto/16 :goto_2

    .line 872
    :cond_3
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    .line 874
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v12

    .line 877
    .restart local v12       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    if-nez v14, :cond_5

    .line 878
    move-object v14, v12

    .line 885
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 886
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 881
    .restart local v12       #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :cond_5
    iput-object v14, v12, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->specialToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    .line 882
    iput-object v12, v14, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 889
    .end local v12           #matchedToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->MoreLexicalActions()V

    .line 890
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 891
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 892
    :cond_7
    const/4 v9, 0x0

    .line 893
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 895
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 898
    :catch_1
    move-exception v1

    .line 900
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 901
    .local v4, error_line:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 902
    .local v5, error_column:I
    const/4 v6, 0x0

    .line 903
    .local v6, error_after:Ljava/lang/String;
    const/4 v2, 0x0

    .line 904
    .local v2, EOFSeen:Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 915
    :goto_5
    if-nez v2, :cond_9

    .line 916
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 917
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    .line 919
    :cond_9
    :goto_6
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 905
    :catch_2
    move-exception v11

    .line 906
    .local v11, e1:Ljava/io/IOException;
    const/4 v2, 0x1

    .line 907
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 908
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 909
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 910
    const/4 v5, 0x0

    goto :goto_5

    .line 907
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 913
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 917
    .end local v11           #e1:Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    .locals 4

    .prologue
    .line 787
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->newToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    .line 788
    .local v1, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->kind:I

    .line 789
    sget-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 790
    .local v0, im:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0           #im:Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    .line 791
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->beginLine:I

    .line 792
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->beginColumn:I

    .line 793
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->endLine:I

    .line 794
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Token;->endColumn:I

    .line 795
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
