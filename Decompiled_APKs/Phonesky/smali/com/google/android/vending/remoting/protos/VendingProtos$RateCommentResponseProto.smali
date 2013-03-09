.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RateCommentResponseProto"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11471
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 11487
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;->cachedSize:I

    .line 11471
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 11490
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 11492
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;->getSerializedSize()I

    .line 11494
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 11499
    const/4 v0, 0x0

    .line 11500
    .local v0, size:I
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;->cachedSize:I

    .line 11501
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11509
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 11510
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 11514
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11515
    :pswitch_0
    return-object p0

    .line 11510
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
    .line 11469
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11485
    return-void
.end method
