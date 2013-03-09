.class public Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;
.super Ljava/lang/Object;
.source "ProtoBufStreamSerializerImpl.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;


# instance fields
.field private final mConfig:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;->mConfig:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;

    .line 28
    return-void
.end method

.method private static dumpBytes([B)Ljava/lang/String;
    .locals 3
    .parameter "bytes"

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 104
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private serialize(Lcom/google/common/io/protocol/ProtoBuf;ILjava/io/OutputStream;)V
    .locals 7
    .parameter "protobuf"
    .parameter "length"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    .line 35
    .local v2, type:Lcom/google/common/io/protocol/ProtoBufType;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;->mConfig:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;

    invoke-interface {v4, v2}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;->isKnownProtoBuf(Lcom/google/common/io/protocol/ProtoBufType;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 36
    new-instance v4, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot serialized unknown protobuf: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 40
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;->mConfig:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;

    invoke-interface {v4, v2}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;->getTag(Lcom/google/common/io/protocol/ProtoBufType;)B

    move-result v1

    .line 41
    .local v1, tag:B
    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 43
    const-string v4, "ProtoBuf"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    const-string v4, "ProtoBuf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v4, "ProtoBuf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    .line 50
    and-int/lit8 v4, p2, 0x7f

    int-to-byte v3, v4

    .line 51
    .local v3, varLength:B
    ushr-int/lit8 p2, p2, 0x7

    .line 54
    if-nez p2, :cond_3

    .line 55
    invoke-virtual {p3, v3}, Ljava/io/OutputStream;->write(I)V

    .line 63
    .end local v3           #varLength:B
    :cond_2
    invoke-virtual {p1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 64
    return-void

    .line 59
    .restart local v3       #varLength:B
    :cond_3
    or-int/lit16 v4, v3, 0x80

    invoke-virtual {p3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B
    .locals 5
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cannot serialize null protobuf!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v2

    .line 87
    .local v2, length:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v3, v2, 0x6

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 91
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;->serialize(Lcom/google/common/io/protocol/ProtoBuf;ILjava/io/OutputStream;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 94
    .local v1, bytes:[B
    const-string v3, "ProtoBuf"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string v3, "ProtoBuf"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;->dumpBytes([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    return-object v1
.end method
