.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrefetchedBundleProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasRequest:Z

.field private hasResponse:Z

.field private request_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

.field private response_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24064
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 24069
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->request_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    .line 24089
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->response_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    .line 24132
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->cachedSize:I

    .line 24064
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 24135
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 24137
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->getSerializedSize()I

    .line 24139
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->cachedSize:I

    return v0
.end method

.method public getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    .locals 1

    .prologue
    .line 24071
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->request_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    return-object v0
.end method

.method public getResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1

    .prologue
    .line 24091
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->response_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 24144
    const/4 v0, 0x0

    .line 24145
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24146
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24149
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24150
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->getResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24153
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->cachedSize:I

    .line 24154
    return v0
.end method

.method public hasRequest()Z
    .locals 1

    .prologue
    .line 24070
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasRequest:Z

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 24090
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24162
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 24163
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 24167
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24168
    :sswitch_0
    return-object p0

    .line 24173
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;-><init>()V

    .line 24174
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24175
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->setRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    goto :goto_0

    .line 24179
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;-><init>()V

    .line 24180
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24181
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->setResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    goto :goto_0

    .line 24163
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
    .line 24062
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    move-result-object v0

    return-object v0
.end method

.method public setRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 24073
    if-nez p1, :cond_0

    .line 24074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24076
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasRequest:Z

    .line 24077
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->request_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    .line 24078
    return-object p0
.end method

.method public setResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 24093
    if-nez p1, :cond_0

    .line 24094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24096
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasResponse:Z

    .line 24097
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->response_:Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    .line 24098
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
    .line 24124
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24125
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24127
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24128
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;->getResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 24130
    :cond_1
    return-void
.end method
