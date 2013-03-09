.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalPreapprovalRequestProto"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9651
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9667
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;->cachedSize:I

    .line 9651
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9670
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 9672
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;->getSerializedSize()I

    .line 9674
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 9679
    const/4 v0, 0x0

    .line 9680
    .local v0, size:I
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;->cachedSize:I

    .line 9681
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9689
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9690
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 9694
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9695
    :pswitch_0
    return-object p0

    .line 9690
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
    .line 9649
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

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
    .line 9665
    return-void
.end method
