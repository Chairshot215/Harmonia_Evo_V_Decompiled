.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppSuggestionProto"
.end annotation


# instance fields
.field private assetInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

.field private cachedSize:I

.field private hasAssetInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17983
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17988
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->assetInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 18025
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->cachedSize:I

    .line 17983
    return-void
.end method


# virtual methods
.method public getAssetInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .locals 1

    .prologue
    .line 17990
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->assetInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 18028
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 18030
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->getSerializedSize()I

    .line 18032
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 18037
    const/4 v0, 0x0

    .line 18038
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->hasAssetInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18039
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->getAssetInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18042
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->cachedSize:I

    .line 18043
    return v0
.end method

.method public hasAssetInfo()Z
    .locals 1

    .prologue
    .line 17989
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->hasAssetInfo:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18051
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 18052
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 18056
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18057
    :sswitch_0
    return-object p0

    .line 18062
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;-><init>()V

    .line 18063
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 18064
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->setAssetInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    goto :goto_0

    .line 18052
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
    .line 17981
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 17992
    if-nez p1, :cond_0

    .line 17993
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17995
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->hasAssetInfo:Z

    .line 17996
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->assetInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 17997
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
    .line 18020
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->hasAssetInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18021
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;->getAssetInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 18023
    :cond_0
    return-void
.end method
