.class public abstract Lcom/google/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/AbstractMessageLite$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 5

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v3

    new-array v2, v3, [B

    .line 63
    .local v2, result:[B
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 64
    .local v1, output:Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 65
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object v2

    .line 67
    .end local v1           #output:Lcom/google/protobuf/CodedOutputStream;
    .end local v2           #result:[B
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 4

    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    .line 51
    .local v1, out:Lcom/google/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 52
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$CodedBuilder;->build()Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 53
    .end local v1           #out:Lcom/google/protobuf/ByteString$CodedBuilder;
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v2

    .line 85
    .local v2, serialized:I
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 87
    .local v0, bufferSize:I
    invoke-static {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 89
    .local v1, codedOutput:Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 91
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 92
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 77
    .local v0, bufferSize:I
    invoke-static {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 79
    .local v1, codedOutput:Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 80
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 81
    return-void
.end method
