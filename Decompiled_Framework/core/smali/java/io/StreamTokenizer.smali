.class public Ljava/io/StreamTokenizer;
.super Ljava/lang/Object;
.source "StreamTokenizer.java"


# static fields
.field private static final TOKEN_COMMENT:B = 0x1t

.field private static final TOKEN_DIGIT:B = 0x10t

.field private static final TOKEN_QUOTE:B = 0x2t

.field private static final TOKEN_WHITE:B = 0x4t

.field private static final TOKEN_WORD:B = 0x8t

.field public static final TT_EOF:I = -0x1

.field public static final TT_EOL:I = 0xa

.field public static final TT_NUMBER:I = -0x2

.field private static final TT_UNKNOWN:I = -0x4

.field public static final TT_WORD:I = -0x3


# instance fields
.field private forceLowercase:Z

.field private inReader:Ljava/io/Reader;

.field private inStream:Ljava/io/InputStream;

.field private isEOLSignificant:Z

.field private lastCr:Z

.field private lineNumber:I

.field public nval:D

.field private peekChar:I

.field private pushBackToken:Z

.field private slashSlashComments:Z

.field private slashStarComments:Z

.field public sval:Ljava/lang/String;

.field private tokenTypes:[B

.field public ttype:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x4

    iput v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v0, 0x1

    iput v0, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    const/4 v0, -0x2

    iput v0, p0, Ljava/io/StreamTokenizer;->peekChar:I

    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v0, 0xa0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->commentChar(I)V

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->parseNumbers()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/StreamTokenizer;->inReader:Ljava/io/Reader;

    return-void
.end method

.method private read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->inReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public commentChar(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x1

    aput-byte v1, v0, p1

    :cond_0
    return-void
.end method

.method public eolIsSignificant(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    return-void
.end method

.method public lineno()I
    .locals 1

    iget v0, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    return v0
.end method

.method public lowerCaseMode(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->forceLowercase:Z

    return-void
.end method

.method public nextToken()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    iput-boolean v13, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    iget v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v14, -0x4

    if-eq v13, v14, :cond_0

    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    :goto_0
    return v2

    :cond_0
    const/4 v13, 0x0

    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iget v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_2

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    :goto_1
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->lastCr:Z

    if-eqz v13, :cond_1

    const/16 v13, 0xa

    if-ne v2, v13, :cond_1

    const/4 v13, 0x0

    iput-boolean v13, p0, Ljava/io/StreamTokenizer;->lastCr:Z

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    :cond_1
    const/4 v13, -0x1

    if-ne v2, v13, :cond_3

    const/4 v2, -0x1

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_0

    :cond_2
    iget v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    goto :goto_1

    :cond_3
    const/16 v13, 0xff

    if-le v2, v13, :cond_4

    const/16 v3, 0x8

    :goto_2
    and-int/lit8 v13, v3, 0x4

    if-eqz v13, :cond_c

    const/16 v13, 0xd

    if-ne v2, v13, :cond_7

    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    iput-boolean v13, p0, Ljava/io/StreamTokenizer;->lastCr:Z

    const/4 v13, -0x2

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    const/16 v2, 0xa

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_0

    :cond_4
    iget-object v13, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v3, v13, v2

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    const/16 v13, 0xa

    if-ne v2, v13, :cond_6

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    :cond_6
    :goto_3
    const/4 v13, -0x1

    if-ne v2, v13, :cond_a

    const/4 v2, -0x1

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_0

    :cond_7
    const/16 v13, 0xa

    if-ne v2, v13, :cond_9

    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    if-eqz v13, :cond_8

    const/4 v13, -0x2

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    const/16 v2, 0xa

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    goto :goto_3

    :cond_a
    const/16 v13, 0xff

    if-le v2, v13, :cond_b

    const/16 v3, 0x8

    :goto_4
    goto :goto_2

    :cond_b
    iget-object v13, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v3, v13, v2

    goto :goto_4

    :cond_c
    and-int/lit8 v13, v3, 0x10

    if-eqz v13, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_11

    const/4 v1, 0x1

    :cond_d
    :goto_5
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_e

    const/4 v7, 0x1

    :cond_e
    int-to-char v13, v2

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    const/16 v13, 0x30

    if-lt v2, v13, :cond_f

    const/16 v13, 0x39

    if-le v2, v13, :cond_d

    :cond_f
    if-nez v7, :cond_10

    const/16 v13, 0x2e

    if-eq v2, v13, :cond_d

    :cond_10
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    if-eqz v1, :cond_12

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    const/16 v2, 0x2d

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    goto :goto_5

    :cond_12
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iput-wide v13, p0, Ljava/io/StreamTokenizer;->nval:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    const/4 v2, -0x2

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-wide/16 v13, 0x0

    iput-wide v13, p0, Ljava/io/StreamTokenizer;->nval:D

    goto :goto_6

    :cond_13
    and-int/lit8 v13, v3, 0x8

    if-eqz v13, :cond_17

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_14
    int-to-char v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    const/4 v13, -0x1

    if-eq v2, v13, :cond_15

    const/16 v13, 0x100

    if-ge v2, v13, :cond_14

    iget-object v13, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v13, v13, v2

    and-int/lit8 v13, v13, 0x18

    if-nez v13, :cond_14

    :cond_15
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->forceLowercase:Z

    if-eqz v13, :cond_16

    iget-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    :cond_16
    const/4 v2, -0x3

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    :cond_17
    const/4 v13, 0x2

    if-ne v3, v13, :cond_22

    move v8, v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    :cond_18
    :goto_7
    if-ltz v9, :cond_20

    if-eq v9, v8, :cond_20

    const/16 v13, 0xd

    if-eq v9, v13, :cond_20

    const/16 v13, 0xa

    if-eq v9, v13, :cond_20

    const/4 v11, 0x1

    const/16 v13, 0x5c

    if-ne v9, v13, :cond_1a

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v0

    const/16 v13, 0x37

    if-gt v0, v13, :cond_1f

    const/16 v13, 0x30

    if-lt v0, v13, :cond_1f

    add-int/lit8 v4, v0, -0x30

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v0

    const/16 v13, 0x37

    if-gt v0, v13, :cond_19

    const/16 v13, 0x30

    if-ge v0, v13, :cond_1b

    :cond_19
    const/4 v11, 0x0

    :goto_8
    if-nez v11, :cond_1e

    int-to-char v13, v4

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v0

    :cond_1a
    :goto_9
    if-eqz v11, :cond_18

    int-to-char v13, v9

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    goto :goto_7

    :cond_1b
    mul-int/lit8 v13, v4, 0x8

    add-int/lit8 v14, v0, -0x30

    add-int v4, v13, v14

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v0

    const/16 v13, 0x1f

    if-gt v4, v13, :cond_1c

    const/16 v13, 0x37

    if-gt v0, v13, :cond_1c

    const/16 v13, 0x30

    if-ge v0, v13, :cond_1d

    :cond_1c
    const/4 v11, 0x0

    goto :goto_8

    :cond_1d
    mul-int/lit8 v13, v4, 0x8

    add-int/lit8 v14, v0, -0x30

    add-int v4, v13, v14

    goto :goto_8

    :cond_1e
    move v9, v4

    goto :goto_9

    :cond_1f
    sparse-switch v0, :sswitch_data_0

    move v9, v0

    goto :goto_9

    :sswitch_0
    const/4 v9, 0x7

    goto :goto_9

    :sswitch_1
    const/16 v9, 0x8

    goto :goto_9

    :sswitch_2
    const/16 v9, 0xc

    goto :goto_9

    :sswitch_3
    const/16 v9, 0xa

    goto :goto_9

    :sswitch_4
    const/16 v9, 0xd

    goto :goto_9

    :sswitch_5
    const/16 v9, 0x9

    goto :goto_9

    :sswitch_6
    const/16 v9, 0xb

    goto :goto_9

    :cond_20
    if-ne v9, v8, :cond_21

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    :cond_21
    iput v9, p0, Ljava/io/StreamTokenizer;->peekChar:I

    iput v8, p0, Ljava/io/StreamTokenizer;->ttype:I

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    :cond_22
    const/16 v13, 0x2f

    if-ne v2, v13, :cond_2d

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    if-nez v13, :cond_23

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    if-eqz v13, :cond_2d

    :cond_23
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    const/16 v13, 0x2a

    if-ne v2, v13, :cond_29

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    if-eqz v13, :cond_29

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    :cond_24
    :goto_a
    move v2, v9

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    const/4 v13, -0x1

    if-ne v2, v13, :cond_25

    const/4 v13, -0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    const/4 v2, -0x1

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    :cond_25
    const/16 v13, 0xd

    if-ne v2, v13, :cond_27

    const/16 v13, 0xa

    if-ne v9, v13, :cond_26

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    :cond_26
    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    goto :goto_a

    :cond_27
    const/16 v13, 0xa

    if-ne v2, v13, :cond_28

    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    goto :goto_a

    :cond_28
    const/16 v13, 0x2a

    if-ne v2, v13, :cond_24

    const/16 v13, 0x2f

    if-ne v9, v13, :cond_24

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    goto/16 :goto_0

    :cond_29
    const/16 v13, 0x2f

    if-ne v2, v13, :cond_2c

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    if-eqz v13, :cond_2c

    :cond_2a
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    if-ltz v2, :cond_2b

    const/16 v13, 0xd

    if-eq v2, v13, :cond_2b

    const/16 v13, 0xa

    if-ne v2, v13, :cond_2a

    :cond_2b
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    goto/16 :goto_0

    :cond_2c
    const/4 v13, 0x1

    if-eq v3, v13, :cond_2d

    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    const/16 v2, 0x2f

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    :cond_2d
    const/4 v13, 0x1

    if-ne v3, v13, :cond_30

    :cond_2e
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    if-ltz v2, :cond_2f

    const/16 v13, 0xd

    if-eq v2, v13, :cond_2f

    const/16 v13, 0xa

    if-ne v2, v13, :cond_2e

    :cond_2f
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    goto/16 :goto_0

    :cond_30
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method public ordinaryChar(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x0

    aput-byte v1, v0, p1

    :cond_0
    return-void
.end method

.method public ordinaryChars(II)V
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_1

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    :cond_1
    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_2

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public parseNumbers()V
    .locals 4

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/16 v2, 0x2e

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/16 v2, 0x2d

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    return-void
.end method

.method public pushBack()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    return-void
.end method

.method public quoteChar(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x2

    aput-byte v1, v0, p1

    :cond_0
    return-void
.end method

.method public resetSyntax()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public slashSlashComments(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    return-void
.end method

.method public slashStarComments(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v1, :sswitch_data_0

    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    aget-byte v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "], line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    const-string v1, "EOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    const-string v1, "EOL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    const-string v1, "n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljava/io/StreamTokenizer;->nval:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public whitespaceChars(II)V
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_1

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    :cond_1
    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_2

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x4

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public wordChars(II)V
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_1

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    :cond_1
    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_2

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
