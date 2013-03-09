.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingInstrument"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasId:Z

.field private hasInstrumentStatus:Z

.field private hasInstrumentType:Z

.field private hasIsInvalid:Z

.field private hasName:Z

.field private id_:Ljava/lang/String;

.field private instrumentStatus_:I

.field private instrumentType_:I

.field private isInvalid_:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->id_:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->name_:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->isInvalid_:Z

    .line 91
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentType_:I

    .line 108
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentStatus_:I

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->cachedSize:I

    .line 35
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->cachedSize:I

    if-gez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getSerializedSize()I

    .line 165
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->cachedSize:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentStatus()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentStatus_:I

    return v0
.end method

.method public getInstrumentType()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentType_:I

    return v0
.end method

.method public getIsInvalid()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->isInvalid_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getIsInvalid()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getInstrumentType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getInstrumentStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_4
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->cachedSize:I

    .line 192
    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasId:Z

    return v0
.end method

.method public hasInstrumentStatus()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentStatus:Z

    return v0
.end method

.method public hasInstrumentType()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentType:Z

    return v0
.end method

.method public hasIsInvalid()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasIsInvalid:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 201
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    :sswitch_0
    return-object p0

    .line 211
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    goto :goto_0

    .line 215
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    goto :goto_0

    .line 219
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->setIsInvalid(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    goto :goto_0

    .line 223
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->setInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    goto :goto_0

    .line 227
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->setInstrumentStatus(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    goto :goto_0

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_1
        0x32 -> :sswitch_2
        0x38 -> :sswitch_3
        0x58 -> :sswitch_4
        0x70 -> :sswitch_5
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
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasId:Z

    .line 45
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->id_:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public setInstrumentStatus(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentStatus:Z

    .line 113
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentStatus_:I

    .line 114
    return-object p0
.end method

.method public setInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentType:Z

    .line 96
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentType_:I

    .line 97
    return-object p0
.end method

.method public setIsInvalid(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasIsInvalid:Z

    .line 79
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->isInvalid_:Z

    .line 80
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasName:Z

    .line 62
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->name_:Ljava/lang/String;

    .line 63
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
    .line 141
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getIsInvalid()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getInstrumentType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getInstrumentStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 156
    :cond_4
    return-void
.end method
