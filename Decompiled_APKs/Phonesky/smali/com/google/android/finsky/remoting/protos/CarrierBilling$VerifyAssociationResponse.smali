.class public final Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CarrierBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CarrierBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VerifyAssociationResponse"
.end annotation


# instance fields
.field private billingAddress_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

.field private cachedSize:I

.field private carrierErrorMessage_:Ljava/lang/String;

.field private carrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

.field private hasBillingAddress:Z

.field private hasCarrierErrorMessage:Z

.field private hasCarrierTos:Z

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->status_:I

    .line 135
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->billingAddress_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 155
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->carrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->carrierErrorMessage_:Ljava/lang/String;

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->cachedSize:I

    .line 107
    return-void
.end method


# virtual methods
.method public getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->billingAddress_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getSerializedSize()I

    .line 226
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->cachedSize:I

    return v0
.end method

.method public getCarrierErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->carrierErrorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->carrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasBillingAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierTos()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->cachedSize:I

    .line 249
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->status_:I

    return v0
.end method

.method public hasBillingAddress()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasBillingAddress:Z

    return v0
.end method

.method public hasCarrierErrorMessage()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierErrorMessage:Z

    return v0
.end method

.method public hasCarrierTos()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierTos:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasStatus:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 258
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    :sswitch_0
    return-object p0

    .line 268
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    goto :goto_0

    .line 272
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;-><init>()V

    .line 273
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 274
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    goto :goto_0

    .line 278
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;-><init>()V

    .line 279
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 280
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->setCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    goto :goto_0

    .line 284
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->setCarrierErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    goto :goto_0

    .line 258
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 142
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasBillingAddress:Z

    .line 143
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->billingAddress_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 144
    return-object p0
.end method

.method public setCarrierErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierErrorMessage:Z

    .line 180
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->carrierErrorMessage_:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public setCarrierTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierTos:Z

    .line 163
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->carrierTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    .line 164
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasStatus:Z

    .line 123
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->status_:I

    .line 124
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
    .line 205
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasBillingAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierTos()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->getCarrierErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 217
    :cond_3
    return-void
.end method
