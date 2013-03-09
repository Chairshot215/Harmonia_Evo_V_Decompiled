.class public final Lcom/htc/protobuf/CodedOutputStream;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final output:Ljava/io/OutputStream;

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1
    .parameter "output"
    .parameter "buffer"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 73
    iput-object p2, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    .line 75
    array-length v0, p2

    iput v0, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    .line 76
    return-void
.end method

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

    iput-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 66
    iput-object p1, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    .line 67
    iput p2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    .line 68
    add-int v0, p2, p3

    iput v0, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    .line 69
    return-void
.end method

.method public static computeBoolSize(IZ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 477
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 1
    .parameter "value"

    .prologue
    .line 673
    const/4 v0, 0x1

    return v0
.end method

.method public static computeBytesSize(ILcom/htc/protobuf/ByteString;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 527
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/htc/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSizeNoTag(Lcom/htc/protobuf/ByteString;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/htc/protobuf/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 418
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 1
    .parameter "value"

    .prologue
    .line 612
    const/16 v0, 0x8

    return v0
.end method

.method public static computeEnumSize(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 544
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 742
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeFixed32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 468
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 665
    const/4 v0, 0x4

    return v0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 459
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 657
    const/16 v0, 0x8

    return v0
.end method

.method public static computeFloatSize(IF)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 426
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 620
    const/4 v0, 0x4

    return v0
.end method

.method public static computeGroupSize(ILcom/htc/protobuf/MessageLite;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 495
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/htc/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeGroupSizeNoTag(Lcom/htc/protobuf/MessageLite;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 695
    invoke-interface {p0}, Lcom/htc/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public static computeInt32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 450
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 644
    if-ltz p0, :cond_0

    .line 645
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    .line 648
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
    .line 442
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 636
    invoke-static {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeMessageSetExtensionSize(ILcom/htc/protobuf/MessageLite;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 588
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSize(ILcom/htc/protobuf/MessageLite;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 518
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/htc/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSizeNoTag(Lcom/htc/protobuf/MessageLite;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 716
    invoke-interface {p0}, Lcom/htc/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    .line 717
    .local v0, size:I
    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static computeRawMessageSetExtensionSize(ILcom/htc/protobuf/ByteString;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 930
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 934
    :goto_0
    return v0

    .line 931
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 932
    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 933
    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 934
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4
    .parameter "value"

    .prologue
    const-wide/16 v2, 0x0

    .line 952
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 961
    :goto_0
    return v0

    .line 953
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 954
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 955
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 956
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 957
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 958
    :cond_5
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 959
    :cond_6
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 960
    :cond_7
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 961
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeSFixed32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 553
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 750
    const/4 v0, 0x4

    return v0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 562
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 758
    const/16 v0, 0x8

    return v0
.end method

.method public static computeSInt32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 570
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 766
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 578
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 2
    .parameter "value"

    .prologue
    .line 774
    invoke-static {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 486
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 4
    .parameter "value"

    .prologue
    .line 682
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 683
    .local v0, bytes:[B
    array-length v2, v0

    invoke-static {v2}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v2

    array-length v3, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    return v2

    .line 685
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 686
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 not supported."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static computeTagSize(I)I
    .locals 1
    .parameter "fieldNumber"

    .prologue
    .line 905
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 535
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 734
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 434
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 628
    invoke-static {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeUnknownGroupSize(ILcom/htc/protobuf/MessageLite;)I
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    invoke-static {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->computeGroupSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v0

    return v0
.end method

.method public static computeUnknownGroupSizeNoTag(Lcom/htc/protobuf/MessageLite;)I
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 708
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/htc/protobuf/MessageLite;)I

    move-result v0

    return v0
.end method

.method public static encodeZigZag32(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 1000
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static encodeZigZag64(J)J
    .locals 4
    .parameter "n"

    .prologue
    .line 1015
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/htc/protobuf/CodedOutputStream;
    .locals 1
    .parameter "output"

    .prologue
    .line 83
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/OutputStream;I)Lcom/htc/protobuf/CodedOutputStream;
    .locals 2
    .parameter "output"
    .parameter "bufferSize"

    .prologue
    .line 92
    new-instance v0, Lcom/htc/protobuf/CodedOutputStream;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/htc/protobuf/CodedOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/htc/protobuf/CodedOutputStream;
    .locals 2
    .parameter "flatArray"

    .prologue
    .line 103
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->newInstance([BII)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/htc/protobuf/CodedOutputStream;
    .locals 1
    .parameter "flatArray"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 116
    new-instance v0, Lcom/htc/protobuf/CodedOutputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;-><init>([BII)V

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

    .line 784
    iget-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Lcom/htc/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0}, Lcom/htc/protobuf/CodedOutputStream$OutOfSpaceException;-><init>()V

    throw v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 792
    iput v3, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    .line 793
    return-void
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedOutputStream;->spaceLeft()I

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    iget-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 801
    invoke-direct {p0}, Lcom/htc/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 803
    :cond_0
    return-void
.end method

.method public spaceLeft()I
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 811
    iget v0, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    return v0

    .line 813
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    .line 175
    return-void
.end method

.method public writeBoolNoTag(Z)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 335
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBytes(ILcom/htc/protobuf/ByteString;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 216
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/htc/protobuf/ByteString;)V

    .line 217
    return-void
.end method

.method public writeBytesNoTag(Lcom/htc/protobuf/ByteString;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p1}, Lcom/htc/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 373
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 374
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawBytes([B)V

    .line 375
    return-void
.end method

.method public writeDouble(ID)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 125
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 126
    return-void
.end method

.method public writeDoubleNoTag(D)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 295
    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 233
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    .line 234
    return-void
.end method

.method public writeEnumNoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 388
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 168
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 330
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 160
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 161
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 325
    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 132
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 133
    return-void
.end method

.method public writeFloatNoTag(F)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 300
    return-void
.end method

.method public writeGroup(ILcom/htc/protobuf/MessageLite;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 188
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/htc/protobuf/MessageLite;)V

    .line 189
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 190
    return-void
.end method

.method public writeGroupNoTag(Lcom/htc/protobuf/MessageLite;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-interface {p1, p0}, Lcom/htc/protobuf/MessageLite;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 350
    return-void
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
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 153
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 154
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
    .line 314
    if-ltz p1, :cond_0

    .line 315
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint64(J)V

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
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 146
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 147
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
    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 310
    return-void
.end method

.method public writeMessage(ILcom/htc/protobuf/MessageLite;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 209
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/htc/protobuf/MessageLite;)V

    .line 210
    return-void
.end method

.method public writeMessageNoTag(Lcom/htc/protobuf/MessageLite;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-interface {p1}, Lcom/htc/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 367
    invoke-interface {p1, p0}, Lcom/htc/protobuf/MessageLite;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 368
    return-void
.end method

.method public writeMessageSetExtension(ILcom/htc/protobuf/MessageLite;)V
    .locals 3
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 271
    invoke-virtual {p0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 272
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 273
    invoke-virtual {p0, v2, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 274
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 275
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
    .line 849
    iget v0, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    if-ne v0, v1, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/htc/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    aput-byte p1, v0, v1

    .line 854
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
    .line 858
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(B)V

    .line 859
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
    .line 863
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawBytes([BII)V

    .line 864
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
    .line 869
    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    iget v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_0

    .line 871
    iget-object v1, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    .line 895
    :goto_0
    return-void

    .line 876
    :cond_0
    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    iget v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    sub-int v0, v1, v2

    .line 877
    .local v0, bytesWritten:I
    iget-object v1, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    add-int/2addr p2, v0

    .line 879
    sub-int/2addr p3, v0

    .line 880
    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    iput v1, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    .line 881
    invoke-direct {p0}, Lcom/htc/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 886
    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    if-gt p3, v1, :cond_1

    .line 888
    iget-object v1, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    iput p3, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    goto :goto_0

    .line 892
    :cond_1
    iget-object v1, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public writeRawLittleEndian32(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 966
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 967
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 968
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 969
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 970
    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 977
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 978
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 979
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 980
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 981
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 982
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 983
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 984
    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/htc/protobuf/ByteString;)V
    .locals 3
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 284
    invoke-virtual {p0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 285
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 286
    invoke-virtual {p0, v2, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 287
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 288
    return-void
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
    .line 914
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 915
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 916
    return-void

    .line 918
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 919
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
    .line 940
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 941
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 942
    return-void

    .line 944
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 945
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeSFixed32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 240
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    .line 241
    return-void
.end method

.method public writeSFixed32NoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 393
    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 247
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    .line 248
    return-void
.end method

.method public writeSFixed64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 398
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 254
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    .line 255
    return-void
.end method

.method public writeSInt32NoTag(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 403
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 261
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    .line 262
    return-void
.end method

.method public writeSInt64NoTag(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 408
    return-void
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
    .line 180
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 181
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    .line 182
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
    .line 342
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 343
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 344
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawBytes([B)V

    .line 345
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
    .line 900
    invoke-static {p1, p2}, Lcom/htc/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 901
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 223
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 224
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 380
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 139
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 140
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 305
    return-void
.end method

.method public writeUnknownGroup(ILcom/htc/protobuf/MessageLite;)V
    .locals 0
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeGroup(ILcom/htc/protobuf/MessageLite;)V

    .line 203
    return-void
.end method

.method public writeUnknownGroupNoTag(Lcom/htc/protobuf/MessageLite;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/htc/protobuf/MessageLite;)V

    .line 362
    return-void
.end method
