.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RiskHeaderInfoProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasHashedDeviceInfo:Z

.field private hashedDeviceInfo_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8494
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8499
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->hashedDeviceInfo_:Ljava/lang/String;

    .line 8532
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->cachedSize:I

    .line 8494
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8535
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 8537
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->getSerializedSize()I

    .line 8539
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->cachedSize:I

    return v0
.end method

.method public getHashedDeviceInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8500
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->hashedDeviceInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8544
    const/4 v0, 0x0

    .line 8545
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->hasHashedDeviceInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8546
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->getHashedDeviceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8549
    :cond_0
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->cachedSize:I

    .line 8550
    return v0
.end method

.method public hasHashedDeviceInfo()Z
    .locals 1

    .prologue
    .line 8501
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->hasHashedDeviceInfo:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8558
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8559
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8563
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8564
    :sswitch_0
    return-object p0

    .line 8569
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->setHashedDeviceInfo(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    goto :goto_0

    .line 8559
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
    .line 8492
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    move-result-object v0

    return-object v0
.end method

.method public setHashedDeviceInfo(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->hasHashedDeviceInfo:Z

    .line 8504
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->hashedDeviceInfo_:Ljava/lang/String;

    .line 8505
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
    .line 8527
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->hasHashedDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8528
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;->getHashedDeviceInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8530
    :cond_0
    return-void
.end method
