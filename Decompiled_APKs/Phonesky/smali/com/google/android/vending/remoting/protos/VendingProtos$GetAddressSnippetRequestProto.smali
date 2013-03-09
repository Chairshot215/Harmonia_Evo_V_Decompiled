.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAddressSnippetRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

.field private hasEncryptedSubscriberInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21326
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 21331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    .line 21367
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->cachedSize:I

    .line 21326
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 21370
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 21372
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->getSerializedSize()I

    .line 21374
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->cachedSize:I

    return v0
.end method

.method public getEncryptedSubscriberInfo()Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .locals 1

    .prologue
    .line 21333
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 21379
    const/4 v0, 0x0

    .line 21380
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->hasEncryptedSubscriberInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21381
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->getEncryptedSubscriberInfo()Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21384
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->cachedSize:I

    .line 21385
    return v0
.end method

.method public hasEncryptedSubscriberInfo()Z
    .locals 1

    .prologue
    .line 21332
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->hasEncryptedSubscriberInfo:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21393
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 21394
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 21398
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21399
    :sswitch_0
    return-object p0

    .line 21404
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;-><init>()V

    .line 21405
    .local v1, value:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 21406
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->setEncryptedSubscriberInfo(Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    goto :goto_0

    .line 21394
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21324
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setEncryptedSubscriberInfo(Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21335
    if-nez p1, :cond_0

    .line 21336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21338
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->hasEncryptedSubscriberInfo:Z

    .line 21339
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    .line 21340
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21362
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->hasEncryptedSubscriberInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21363
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->getEncryptedSubscriberInfo()Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 21365
    :cond_0
    return-void
.end method
