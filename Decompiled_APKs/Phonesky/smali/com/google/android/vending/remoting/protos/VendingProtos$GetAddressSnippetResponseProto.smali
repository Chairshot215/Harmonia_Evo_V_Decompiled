.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAddressSnippetResponseProto"
.end annotation


# instance fields
.field private addressSnippet_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAddressSnippet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21428
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 21433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->addressSnippet_:Ljava/lang/String;

    .line 21465
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->cachedSize:I

    .line 21428
    return-void
.end method


# virtual methods
.method public getAddressSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21434
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->addressSnippet_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 21468
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 21470
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->getSerializedSize()I

    .line 21472
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 21477
    const/4 v0, 0x0

    .line 21478
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->hasAddressSnippet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21479
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->getAddressSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21482
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->cachedSize:I

    .line 21483
    return v0
.end method

.method public hasAddressSnippet()Z
    .locals 1

    .prologue
    .line 21435
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->hasAddressSnippet:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21491
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 21492
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 21496
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21497
    :sswitch_0
    return-object p0

    .line 21502
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->setAddressSnippet(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    goto :goto_0

    .line 21492
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
    .line 21426
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setAddressSnippet(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 21437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->hasAddressSnippet:Z

    .line 21438
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->addressSnippet_:Ljava/lang/String;

    .line 21439
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
    .line 21460
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->hasAddressSnippet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21461
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->getAddressSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 21463
    :cond_0
    return-void
.end method
