.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalPreapprovalResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPreapprovalKey:Z

.field private preapprovalKey_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9718
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9723
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->preapprovalKey_:Ljava/lang/String;

    .line 9756
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->cachedSize:I

    .line 9718
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9759
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 9761
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->getSerializedSize()I

    .line 9763
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->cachedSize:I

    return v0
.end method

.method public getPreapprovalKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9724
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->preapprovalKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9768
    const/4 v0, 0x0

    .line 9769
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->hasPreapprovalKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9770
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9773
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->cachedSize:I

    .line 9774
    return v0
.end method

.method public hasPreapprovalKey()Z
    .locals 1

    .prologue
    .line 9725
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->hasPreapprovalKey:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9782
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9783
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9787
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9788
    :sswitch_0
    return-object p0

    .line 9793
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->setPreapprovalKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    goto :goto_0

    .line 9783
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
    .line 9716
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setPreapprovalKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->hasPreapprovalKey:Z

    .line 9728
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->preapprovalKey_:Ljava/lang/String;

    .line 9729
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
    .line 9751
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->hasPreapprovalKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9752
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9754
    :cond_0
    return-void
.end method
