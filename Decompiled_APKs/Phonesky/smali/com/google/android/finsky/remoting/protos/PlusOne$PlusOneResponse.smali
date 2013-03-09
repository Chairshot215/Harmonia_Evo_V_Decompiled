.class public final Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PlusOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/PlusOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOneResponse"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->getSerializedSize()I

    .line 32
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, size:I
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->cachedSize:I

    .line 39
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 48
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    :pswitch_0
    return-object p0

    .line 48
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 23
    return-void
.end method
