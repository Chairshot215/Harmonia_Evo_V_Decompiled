.class public final Lcom/google/protobuf/micro/CodedOutputStreamMicro;
.super Ljava/lang/Object;
.source "CodedOutputStreamMicro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/micro/CodedOutputStreamMicro$OutOfSpaceException;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final output:Ljava/io/OutputStream;

.field private position:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->output:Ljava/io/OutputStream;

    .line 66
    iput-object p1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->buffer:[B

    .line 67
    iput p2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    .line 68
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->limit:I

    .line 69
    return-void
.end method

.method public static computeInt32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 437
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 626
    if-ltz p0, :cond_0

    .line 627
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeRawVarint32Size(I)I

    move-result v0

    .line 630
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeInt64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 429
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 618
    invoke-static {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 491
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSizeNoTag(Lcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSizeNoTag(Lcom/google/protobuf/micro/MessageMicro;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/google/protobuf/micro/MessageMicro;->getCachedSize()I

    move-result v0

    .line 686
    .local v0, size:I
    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 906
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 910
    :goto_0
    return v0

    .line 907
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 908
    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 909
    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 910
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4
    .parameter "value"

    .prologue
    const-wide/16 v2, 0x0

    .line 928
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 937
    :goto_0
    return v0

    .line 929
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 930
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 931
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 932
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 933
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 934
    :cond_5
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 935
    :cond_6
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 936
    :cond_7
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 937
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 473
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 4
    .parameter "value"

    .prologue
    .line 664
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 665
    .local v0, bytes:[B
    array-length v2, v0

    invoke-static {v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeRawVarint32Size(I)I

    move-result v2

    array-length v3, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    return v2

    .line 667
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 668
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 not supported."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static computeTagSize(I)I
    .locals 1
    .parameter "fieldNumber"

    .prologue
    .line 881
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .locals 1
    .parameter "flatArray"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 114
    new-instance v0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;-><init>([BII)V

    return-object v0
.end method

.method private refreshBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 760
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Lcom/google/protobuf/micro/CodedOutputStreamMicro$OutOfSpaceException;

    invoke-direct {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro$OutOfSpaceException;-><init>()V

    throw v0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 768
    iput v3, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    .line 769
    return-void
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 2

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->spaceLeft()I

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    return-void
.end method

.method public spaceLeft()I
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 787
    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->limit:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    sub-int/2addr v0, v1

    return v0

    .line 789
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeInt32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeTag(II)V

    .line 151
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32NoTag(I)V

    .line 152
    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    if-ltz p1, :cond_0

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawVarint32(I)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawVarint64(J)V

    goto :goto_0
.end method

.method public writeInt64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeTag(II)V

    .line 144
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64NoTag(J)V

    .line 145
    return-void
.end method

.method public writeInt64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawVarint64(J)V

    .line 303
    return-void
.end method

.method public writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeTag(II)V

    .line 194
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessageNoTag(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 195
    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/micro/MessageMicro;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/google/protobuf/micro/MessageMicro;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawVarint32(I)V

    .line 348
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/MessageMicro;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    .line 349
    return-void
.end method

.method public writeRawByte(B)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->limit:I

    if-ne v0, v1, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->refreshBuffer()V

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    aput-byte p1, v0, v1

    .line 830
    return-void
.end method

.method public writeRawByte(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawByte(B)V

    .line 835
    return-void
.end method

.method public writeRawBytes([B)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawBytes([BII)V

    .line 840
    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 3
    .parameter "value"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->limit:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_0

    .line 847
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    .line 871
    :goto_0
    return-void

    .line 852
    :cond_0
    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->limit:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    sub-int v0, v1, v2

    .line 853
    .local v0, bytesWritten:I
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    add-int/2addr p2, v0

    .line 855
    sub-int/2addr p3, v0

    .line 856
    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->limit:I

    iput v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    .line 857
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->refreshBuffer()V

    .line 862
    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->limit:I

    if-gt p3, v1, :cond_1

    .line 864
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    iput p3, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->position:I

    goto :goto_0

    .line 868
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 891
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawByte(I)V

    .line 892
    return-void

    .line 894
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawByte(I)V

    .line 895
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 916
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 917
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawByte(I)V

    .line 918
    return-void

    .line 920
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawByte(I)V

    .line 921
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeTag(II)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeStringNoTag(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 336
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawVarint32(I)V

    .line 337
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawBytes([B)V

    .line 338
    return-void
.end method

.method public writeTag(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "wireType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-static {p1, p2}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawVarint32(I)V

    .line 877
    return-void
.end method
