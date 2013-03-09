.class final Lorg/apache/xml/serializer/WriterToUTF8Buffered;
.super Ljava/io/Writer;
.source "WriterToUTF8Buffered.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;


# static fields
.field private static final BYTES_MAX:I = 0x4000

.field private static final CHARS_MAX:I = 0x1555


# instance fields
.field private count:I

.field private final m_inputChars:[C

.field private final m_os:Ljava/io/OutputStream;

.field private final m_outputBytes:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    const/16 v0, 0x4003

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    const/16 v0, 0x1557

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    :cond_0
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    const/16 v1, 0x4000

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    :cond_0
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x800

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x6

    add-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0xc

    add-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x12

    add-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    mul-int/lit8 v16, v15, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    move/from16 v22, v0

    move/from16 v0, v22

    rsub-int v0, v0, 0x4000

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    const/16 v22, 0x4000

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    const/16 v20, 0x0

    div-int/lit16 v0, v15, 0x1555

    move/from16 v19, v0

    rem-int/lit16 v0, v15, 0x1555

    move/from16 v22, v0

    if-lez v22, :cond_1

    add-int/lit8 v8, v19, 0x1

    :goto_0
    const/4 v11, 0x0

    const/4 v7, 0x1

    :goto_1
    if-gt v7, v8, :cond_8

    move/from16 v21, v11

    int-to-long v0, v15

    move-wide/from16 v22, v0

    int-to-long v0, v7

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    int-to-long v0, v8

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int/lit8 v11, v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v11, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    sub-int v14, v11, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v14, -0x1

    aget-char v5, v22, v23

    const v22, 0xd800

    move/from16 v0, v22

    if-lt v5, v0, :cond_0

    const v22, 0xdbff

    move/from16 v0, v22

    if-gt v5, v0, :cond_0

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v14, v14, -0x1

    if-ne v7, v8, :cond_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v14}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->write([CII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move/from16 v8, v19

    goto :goto_0

    :cond_2
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v15, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move/from16 v18, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    const/4 v13, 0x0

    move v10, v9

    :goto_2
    move/from16 v0, v18

    if-ge v13, v0, :cond_3

    aget-char v5, v6, v13

    const/16 v22, 0x80

    move/from16 v0, v22

    if-ge v5, v0, :cond_3

    add-int/lit8 v9, v10, 0x1

    int-to-byte v0, v5

    move/from16 v22, v0

    aput-byte v22, v4, v10

    add-int/lit8 v13, v13, 0x1

    move v10, v9

    goto :goto_2

    :cond_3
    :goto_3
    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    aget-char v5, v6, v13

    const/16 v22, 0x80

    move/from16 v0, v22

    if-ge v5, v0, :cond_4

    add-int/lit8 v9, v10, 0x1

    int-to-byte v0, v5

    move/from16 v22, v0

    aput-byte v22, v4, v10

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move v10, v9

    goto :goto_3

    :cond_4
    const/16 v22, 0x800

    move/from16 v0, v22

    if-ge v5, v0, :cond_5

    add-int/lit8 v9, v10, 0x1

    shr-int/lit8 v22, v5, 0x6

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0xc0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v10

    add-int/lit8 v10, v9, 0x1

    and-int/lit8 v22, v5, 0x3f

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v9

    move v9, v10

    goto :goto_4

    :cond_5
    const v22, 0xd800

    move/from16 v0, v22

    if-lt v5, v0, :cond_6

    const v22, 0xdbff

    move/from16 v0, v22

    if-gt v5, v0, :cond_6

    move v12, v5

    add-int/lit8 v13, v13, 0x1

    aget-char v17, v6, v13

    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v22, v12, 0x40

    shr-int/lit8 v22, v22, 0x8

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xf0

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0xf0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v10

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v22, v12, 0x40

    shr-int/lit8 v22, v22, 0x2

    and-int/lit8 v22, v22, 0x3f

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v9

    add-int/lit8 v9, v10, 0x1

    shr-int/lit8 v22, v17, 0x6

    and-int/lit8 v22, v22, 0xf

    shl-int/lit8 v23, v12, 0x4

    and-int/lit8 v23, v23, 0x30

    add-int v22, v22, v23

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v10

    add-int/lit8 v10, v9, 0x1

    and-int/lit8 v22, v17, 0x3f

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v9

    move v9, v10

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v9, v10, 0x1

    shr-int/lit8 v22, v5, 0xc

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0xe0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v10

    add-int/lit8 v10, v9, 0x1

    shr-int/lit8 v22, v5, 0x6

    and-int/lit8 v22, v22, 0x3f

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v9

    add-int/lit8 v9, v10, 0x1

    and-int/lit8 v22, v5, 0x3f

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v4, v10

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    :cond_8
    return-void
.end method

.method public write([CII)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 v14, p3, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    move/from16 v19, v0

    move/from16 v0, v19

    rsub-int v0, v0, 0x4000

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v14, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    const/16 v19, 0x4000

    move/from16 v0, v19

    if-le v14, v0, :cond_3

    move/from16 v0, p3

    div-int/lit16 v0, v0, 0x1555

    move/from16 v17, v0

    move/from16 v0, p3

    rem-int/lit16 v0, v0, 0x1555

    move/from16 v19, v0

    if-lez v19, :cond_1

    add-int/lit8 v6, v17, 0x1

    :goto_0
    move/from16 v9, p2

    const/4 v5, 0x1

    :goto_1
    if-gt v5, v6, :cond_9

    move/from16 v18, v9

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v19, v0

    int-to-long v0, v5

    move-wide/from16 v21, v0

    mul-long v19, v19, v21

    int-to-long v0, v6

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v9, p2, v19

    add-int/lit8 v19, v9, -0x1

    aget-char v4, p1, v19

    add-int/lit8 v19, v9, -0x1

    aget-char v12, p1, v19

    const v19, 0xd800

    move/from16 v0, v19

    if-lt v4, v0, :cond_0

    const v19, 0xdbff

    move/from16 v0, v19

    if-gt v4, v0, :cond_0

    add-int v19, p2, p3

    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_0
    :goto_2
    sub-int v13, v9, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->write([CII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move/from16 v6, v17

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_3
    add-int v16, p3, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    move/from16 v11, p2

    move v8, v7

    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_4

    aget-char v4, p1, v11

    const/16 v19, 0x80

    move/from16 v0, v19

    if-ge v4, v0, :cond_4

    add-int/lit8 v7, v8, 0x1

    int-to-byte v0, v4

    move/from16 v19, v0

    aput-byte v19, v3, v8

    add-int/lit8 v11, v11, 0x1

    move v8, v7

    goto :goto_3

    :cond_4
    :goto_4
    move/from16 v0, v16

    if-ge v11, v0, :cond_8

    aget-char v4, p1, v11

    const/16 v19, 0x80

    move/from16 v0, v19

    if-ge v4, v0, :cond_5

    add-int/lit8 v7, v8, 0x1

    int-to-byte v0, v4

    move/from16 v19, v0

    aput-byte v19, v3, v8

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move v8, v7

    goto :goto_4

    :cond_5
    const/16 v19, 0x800

    move/from16 v0, v19

    if-ge v4, v0, :cond_6

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v19, v4, 0x6

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v19, v4, 0x3f

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v7

    move v7, v8

    goto :goto_5

    :cond_6
    const v19, 0xd800

    move/from16 v0, v19

    if-lt v4, v0, :cond_7

    const v19, 0xdbff

    move/from16 v0, v19

    if-gt v4, v0, :cond_7

    move v10, v4

    add-int/lit8 v11, v11, 0x1

    aget-char v15, p1, v11

    add-int/lit8 v7, v8, 0x1

    add-int/lit8 v19, v10, 0x40

    shr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v19, v10, 0x40

    shr-int/lit8 v19, v19, 0x2

    and-int/lit8 v19, v19, 0x3f

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v7

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v19, v15, 0x6

    and-int/lit8 v19, v19, 0xf

    shl-int/lit8 v20, v10, 0x4

    and-int/lit8 v20, v20, 0x30

    add-int v19, v19, v20

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v19, v15, 0x3f

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v7

    move v7, v8

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v19, v4, 0xc

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0xe0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v19, v4, 0x6

    and-int/lit8 v19, v19, 0x3f

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v7

    add-int/lit8 v7, v8, 0x1

    and-int/lit8 v19, v4, 0x3f

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    goto/16 :goto_5

    :cond_8
    move-object/from16 v0, p0

    iput v8, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    :cond_9
    return-void
.end method
