.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAssetRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private directDownloadKey_:Ljava/lang/String;

.field private hasAssetId:Z

.field private hasDirectDownloadKey:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12542
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12547
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->assetId_:Ljava/lang/String;

    .line 12564
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->directDownloadKey_:Ljava/lang/String;

    .line 12601
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->cachedSize:I

    .line 12542
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12548
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 12604
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 12606
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->getSerializedSize()I

    .line 12608
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->cachedSize:I

    return v0
.end method

.method public getDirectDownloadKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12565
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->directDownloadKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 12613
    const/4 v0, 0x0

    .line 12614
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12615
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12618
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasDirectDownloadKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12619
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->getDirectDownloadKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12622
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->cachedSize:I

    .line 12623
    return v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 12549
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasDirectDownloadKey()Z
    .locals 1

    .prologue
    .line 12566
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasDirectDownloadKey:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12631
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 12632
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 12636
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12637
    :sswitch_0
    return-object p0

    .line 12642
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    goto :goto_0

    .line 12646
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->setDirectDownloadKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    goto :goto_0

    .line 12632
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 12540
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 12551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasAssetId:Z

    .line 12552
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->assetId_:Ljava/lang/String;

    .line 12553
    return-object p0
.end method

.method public setDirectDownloadKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 12568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasDirectDownloadKey:Z

    .line 12569
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->directDownloadKey_:Ljava/lang/String;

    .line 12570
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
    .line 12593
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12594
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12596
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->hasDirectDownloadKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12597
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;->getDirectDownloadKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12599
    :cond_1
    return-void
.end method
