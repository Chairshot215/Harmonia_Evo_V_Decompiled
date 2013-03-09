.class public final Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RateSuggestedContentResponse.java"


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;->cachedSize:I

    .line 8
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;->getSerializedSize()I

    .line 30
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, size:I
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;->cachedSize:I

    .line 37
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 46
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :pswitch_0
    return-object p0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 21
    return-void
.end method
