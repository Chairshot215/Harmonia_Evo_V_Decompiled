.class public Lcom/futuredial/sammobexsms/SamMObexSmsParser;
.super Ljava/lang/Object;
.source "SamMObexSmsParser.java"

# interfaces
.implements Lcom/futuredial/IParser;


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "SamMObexSmsParser"


# instance fields
.field private iCurBoxType:I

.field private lCurBoxCount:J

.field private lCurBoxRead:J

.field private leftDataBuf:[B

.field private tempItem:Lcom/futuredial/publicobj/Item;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->iCurBoxType:I

    .line 28
    iput-wide v2, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxCount:J

    .line 29
    iput-wide v2, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxRead:J

    .line 30
    iput-object v1, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    .line 31
    iput-object v1, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    .line 25
    return-void
.end method

.method private SaveLeftData([BII)V
    .locals 3
    .parameter "result"
    .parameter "iStart"
    .parameter "iEnd"

    .prologue
    .line 35
    sub-int v0, p3, p2

    .line 36
    .local v0, leftDataLen:I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    .line 37
    iget-object v1, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-void
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 0
    .parameter "iaUnCompleted"

    .prologue
    .line 44
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 4
    .parameter "application"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->iCurBoxType:I

    .line 52
    iput-wide v2, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxCount:J

    .line 53
    iput-wide v2, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxRead:J

    .line 54
    iput-object v1, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    .line 55
    iput-object v1, p0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 1
    .parameter "contentType"
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 31
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 63
    const-string v25, "SamMObexSmsParser"

    const-string v26, "enter function parse"

    invoke-static/range {v25 .. v26}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, p3

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 67
    :cond_0
    const-string v25, "SamMObexSmsParser"

    const-string v26, "exit function parse, return is 1"

    invoke-static/range {v25 .. v26}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/16 v25, 0x1

    .line 331
    :goto_0
    return v25

    .line 73
    :cond_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x17

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    const/16 v25, 0x0

    aget-byte v25, p2, v25

    const/16 v26, -0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    const/16 v25, 0x16

    aget-byte v25, p2, v25

    const/16 v26, -0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 75
    new-instance v22, Ljava/lang/String;

    const/16 v25, 0x1

    const/16 v26, 0x10

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 76
    .local v22, strTag:Ljava/lang/String;
    const-string v25, "FDSAMMOBEXSMSBEG"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 78
    const/16 v25, 0x11

    aget-byte v25, p2, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    add-int/lit16 v0, v0, -0x90

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->iCurBoxType:I

    .line 79
    const/16 v25, 0x12

    aget-byte v25, p2, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    const/16 v27, 0x18

    shl-long v25, v25, v27

    const-wide v27, 0xff000000L

    and-long v25, v25, v27

    const/16 v27, 0x13

    aget-byte v27, p2, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x10

    shl-long v27, v27, v29

    const-wide/32 v29, 0xff0000

    and-long v27, v27, v29

    or-long v25, v25, v27

    const/16 v27, 0x14

    aget-byte v27, p2, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x8

    shl-long v27, v27, v29

    const-wide/32 v29, 0xff00

    and-long v27, v27, v29

    or-long v25, v25, v27

    const/16 v27, 0x15

    aget-byte v27, p2, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const-wide/16 v29, 0xff

    and-long v27, v27, v29

    or-long v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxCount:J

    .line 84
    const-wide/16 v25, 0x0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxRead:J

    .line 85
    new-instance v25, Lcom/futuredial/publicobj/Item;

    invoke-direct/range {v25 .. v25}, Lcom/futuredial/publicobj/Item;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    .line 86
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    .line 88
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 90
    :cond_2
    const-string v25, "FDSAMMOBEXSMSEND"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 92
    const/16 v25, 0x11

    aget-byte v25, p2, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    add-int/lit16 v5, v0, -0x90

    .line 93
    .local v5, boxType:I
    const/16 v25, 0x12

    aget-byte v25, p2, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    const/16 v27, 0x18

    shl-long v25, v25, v27

    const-wide v27, 0xff000000L

    and-long v25, v25, v27

    const/16 v27, 0x13

    aget-byte v27, p2, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x10

    shl-long v27, v27, v29

    const-wide/32 v29, 0xff0000

    and-long v27, v27, v29

    or-long v25, v25, v27

    const/16 v27, 0x14

    aget-byte v27, p2, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x8

    shl-long v27, v27, v29

    const-wide/32 v29, 0xff00

    and-long v27, v27, v29

    or-long v25, v25, v27

    const/16 v27, 0x15

    aget-byte v27, p2, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const-wide/16 v29, 0xff

    and-long v27, v27, v29

    or-long v15, v25, v27

    .line 97
    .local v15, msgCount:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->iCurBoxType:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v5, v0, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxCount:J

    move-wide/from16 v25, v0

    cmp-long v25, v15, v25

    if-eqz v25, :cond_4

    .line 99
    :cond_3
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 101
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxCount:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxRead:J

    move-wide/from16 v27, v0

    cmp-long v25, v25, v27

    if-nez v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/futuredial/publicobj/Item;->GetFieldCount()I

    move-result v25

    if-lez v25, :cond_6

    .line 103
    :cond_5
    const/16 v25, 0x2712

    goto/16 :goto_0

    .line 106
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 108
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 111
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 115
    .end local v5           #boxType:I
    .end local v15           #msgCount:J
    .end local v22           #strTag:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int v14, v25, p3

    .line 118
    .local v14, len:I
    new-array v0, v14, [B

    move-object/from16 v24, v0

    .line 119
    .local v24, tempBuf:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v24

    move/from16 v3, v26

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    move-object/from16 p2, v24

    .line 122
    move/from16 p3, v14

    .line 123
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->leftDataBuf:[B

    .line 127
    .end local v14           #len:I
    .end local v24           #tempBuf:[B
    :cond_9
    const/4 v9, 0x0

    .line 128
    .local v9, iPos:I
    :cond_a
    :goto_1
    move/from16 v0, p3

    if-ge v9, v0, :cond_1f

    .line 132
    add-int/lit8 v25, v9, 0x5

    move/from16 v0, v25

    move/from16 v1, p3

    if-gt v0, v1, :cond_16

    .line 134
    add-int/lit8 v25, v9, 0x0

    aget-byte v25, p2, v25

    const/16 v26, -0x7f

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    add-int/lit8 v25, v9, 0x1

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    add-int/lit8 v25, v9, 0x2

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p2, v25

    const/16 v26, 0x18

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    add-int/lit8 v25, v9, 0x4

    aget-byte v25, p2, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    :cond_b
    add-int/lit8 v25, v9, 0x0

    aget-byte v25, p2, v25

    const/16 v26, -0x7f

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    add-int/lit8 v25, v9, 0x1

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    add-int/lit8 v25, v9, 0x2

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p2, v25

    const/16 v26, 0x18

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    add-int/lit8 v25, v9, 0x4

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 139
    :cond_c
    add-int/lit8 v9, v9, 0x5

    .line 150
    :cond_d
    add-int/lit8 v25, v9, 0x8

    move/from16 v0, v25

    move/from16 v1, p3

    if-gt v0, v1, :cond_17

    .line 152
    add-int/lit8 v25, v9, 0x0

    aget-byte v25, p2, v25

    const/16 v26, -0x7f

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    add-int/lit8 v25, v9, 0x1

    aget-byte v25, p2, v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    add-int/lit8 v25, v9, 0x2

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p2, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 155
    add-int/lit8 v9, v9, 0x8

    .line 166
    :cond_e
    add-int/lit8 v25, v9, 0x8

    move/from16 v0, v25

    move/from16 v1, p3

    if-gt v0, v1, :cond_19

    .line 168
    add-int/lit8 v25, v9, 0x0

    aget-byte v25, p2, v25

    const/16 v26, -0x7f

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    add-int/lit8 v25, v9, 0x1

    aget-byte v25, p2, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    add-int/lit8 v25, v9, 0x2

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p2, v25

    const/16 v26, 0x21

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 171
    add-int/lit8 v25, v9, 0x7

    aget-byte v25, p2, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 172
    .local v17, nDataLen:I
    add-int/lit8 v25, v9, 0x7

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move/from16 v1, p3

    if-gt v0, v1, :cond_18

    .line 174
    add-int/lit8 v17, v17, -0x3

    .line 175
    add-int/lit8 v9, v9, 0xa

    .line 177
    :try_start_0
    new-instance v20, Ljava/lang/String;

    const-string v25, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 178
    .local v20, strMsgContent:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_f

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    move-object/from16 v25, v0

    const/16 v26, 0x7

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_f
    add-int/lit8 v25, v17, 0x1

    add-int v9, v9, v25

    .line 205
    .end local v17           #nDataLen:I
    .end local v20           #strMsgContent:Ljava/lang/String;
    :cond_10
    add-int/lit8 v25, v9, 0x8

    move/from16 v0, v25

    move/from16 v1, p3

    if-gt v0, v1, :cond_1a

    .line 207
    add-int/lit8 v25, v9, 0x0

    aget-byte v25, p2, v25

    const/16 v26, -0x7f

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    add-int/lit8 v25, v9, 0x1

    aget-byte v25, p2, v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    add-int/lit8 v25, v9, 0x2

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p2, v25

    const/16 v26, 0x22

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 210
    add-int/lit8 v9, v9, 0x8

    .line 221
    :cond_11
    add-int/lit8 v25, v9, 0x8

    move/from16 v0, v25

    move/from16 v1, p3

    if-gt v0, v1, :cond_1c

    .line 223
    add-int/lit8 v25, v9, 0x0

    aget-byte v25, p2, v25

    const/16 v26, -0x7f

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    add-int/lit8 v25, v9, 0x1

    aget-byte v25, p2, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    add-int/lit8 v25, v9, 0x2

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p2, v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p2, v25

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 226
    :cond_12
    add-int/lit8 v25, v9, 0x7

    aget-byte v25, p2, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 227
    .restart local v17       #nDataLen:I
    add-int/lit8 v25, v9, 0x7

    add-int v25, v25, v17

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move/from16 v1, p3

    if-gt v0, v1, :cond_1b

    .line 229
    add-int/lit8 v17, v17, -0x3

    .line 230
    add-int/lit8 v9, v9, 0xa

    .line 232
    :try_start_1
    new-instance v21, Ljava/lang/String;

    const-string v25, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 233
    .local v21, strNum:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_13

    .line 235
    new-instance v18, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v18 .. v18}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 236
    .local v18, numField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0x3

    const-string v26, ""

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 237
    new-instance v19, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v19 .. v19}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 238
    .local v19, numFieldPro:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 239
    invoke-virtual/range {v18 .. v19}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    .end local v18           #numField:Lcom/futuredial/publicobj/Field;
    .end local v19           #numFieldPro:Lcom/futuredial/publicobj/Field;
    :cond_13
    add-int/lit8 v25, v17, 0x1

    add-int v9, v9, v25

    .line 265
    .end local v17           #nDataLen:I
    .end local v21           #strNum:Ljava/lang/String;
    :cond_14
    add-int/lit8 v25, v9, 0x8

    move/from16 v0, v25

    move/from16 v1, p3

    if-gt v0, v1, :cond_1d

    .line 267
    add-int/lit8 v25, v9, 0x0

    aget-byte v25, p2, v25

    const/16 v26, -0x7f

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    add-int/lit8 v25, v9, 0x1

    aget-byte v25, p2, v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    add-int/lit8 v25, v9, 0x2

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p2, v25

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    .line 270
    add-int/lit8 v25, v9, 0x4

    aget-byte v25, p2, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    const/16 v27, 0x18

    shl-long v25, v25, v27

    const-wide v27, 0xff000000L

    and-long v25, v25, v27

    add-int/lit8 v27, v9, 0x5

    aget-byte v27, p2, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x10

    shl-long v27, v27, v29

    const-wide/32 v29, 0xff0000

    and-long v27, v27, v29

    or-long v25, v25, v27

    add-int/lit8 v27, v9, 0x6

    aget-byte v27, p2, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x8

    shl-long v27, v27, v29

    const-wide/32 v29, 0xff00

    and-long v27, v27, v29

    or-long v25, v25, v27

    add-int/lit8 v27, v9, 0x7

    aget-byte v27, p2, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const-wide/16 v29, 0xff

    and-long v27, v27, v29

    or-long v25, v25, v27

    const-wide/16 v27, 0x3e8

    mul-long v10, v25, v27

    .line 275
    .local v10, lMilliSecond:J
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v25, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 284
    .local v7, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 285
    .local v6, date:Ljava/util/Date;
    const-wide v25, -0x20253b59800L

    add-long v12, v25, v10

    .line 286
    .local v12, lTime:J
    invoke-virtual {v6, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 287
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    .line 288
    .local v23, strTime:Ljava/lang/String;
    const-string v25, "-"

    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    const-string v26, ":"

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    const-string v26, " "

    const-string v27, "T"

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 292
    add-int/lit8 v9, v9, 0x8

    .line 303
    .end local v6           #date:Ljava/util/Date;
    .end local v7           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v10           #lMilliSecond:J
    .end local v12           #lTime:J
    .end local v23           #strTime:Ljava/lang/String;
    :cond_15
    add-int/lit8 v25, v9, 0x5

    move/from16 v0, v25

    move/from16 v1, p3

    if-gt v0, v1, :cond_1e

    .line 305
    add-int/lit8 v25, v9, 0x0

    aget-byte v25, p2, v25

    const/16 v26, -0x7f

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    add-int/lit8 v25, v9, 0x1

    aget-byte v25, p2, v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    add-int/lit8 v25, v9, 0x2

    aget-byte v25, p2, v25

    const/16 v26, 0x7f

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p2, v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 308
    add-int/lit8 v9, v9, 0x5

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->iCurBoxType:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    move-object/from16 v25, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 315
    new-instance v25, Lcom/futuredial/publicobj/Item;

    invoke-direct/range {v25 .. v25}, Lcom/futuredial/publicobj/Item;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->tempItem:Lcom/futuredial/publicobj/Item;

    .line 317
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxRead:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x1

    add-long v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->lCurBoxRead:J

    goto/16 :goto_1

    .line 144
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->SaveLeftData([BII)V

    .line 145
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 160
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->SaveLeftData([BII)V

    .line 161
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 182
    .restart local v17       #nDataLen:I
    :catch_0
    move-exception v8

    .line 184
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 185
    const/16 v25, 0x2719

    goto/16 :goto_0

    .line 192
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->SaveLeftData([BII)V

    .line 193
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 199
    .end local v17           #nDataLen:I
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->SaveLeftData([BII)V

    .line 200
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 215
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->SaveLeftData([BII)V

    .line 216
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 242
    .restart local v17       #nDataLen:I
    :catch_1
    move-exception v8

    .line 244
    .restart local v8       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 245
    const/16 v25, 0x2719

    goto/16 :goto_0

    .line 251
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->SaveLeftData([BII)V

    .line 252
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 258
    .end local v17           #nDataLen:I
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->SaveLeftData([BII)V

    .line 259
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 297
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->SaveLeftData([BII)V

    .line 298
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 322
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Lcom/futuredial/sammobexsms/SamMObexSmsParser;->SaveLeftData([BII)V

    .line 323
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 330
    :cond_1f
    const-string v25, "SamMObexSmsParser"

    const-string v26, "exit function parse, return is 0"

    invoke-static/range {v25 .. v26}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/16 v25, 0x0

    goto/16 :goto_0
.end method
