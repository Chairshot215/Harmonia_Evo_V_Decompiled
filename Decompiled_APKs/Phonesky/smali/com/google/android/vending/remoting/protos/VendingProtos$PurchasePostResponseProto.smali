.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchasePostResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private deprecatedResultCode_:I

.field private hasDeprecatedResultCode:Z

.field private hasPurchaseInfo:Z

.field private hasPurchaseResult:Z

.field private hasTermsOfServiceCheckboxText:Z

.field private hasTermsOfServiceHeaderText:Z

.field private hasTermsOfServiceName:Z

.field private hasTermsOfServiceText:Z

.field private hasTermsOfServiceUrl:Z

.field private purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

.field private purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

.field private termsOfServiceCheckboxText_:Ljava/lang/String;

.field private termsOfServiceHeaderText_:Ljava/lang/String;

.field private termsOfServiceName_:Ljava/lang/String;

.field private termsOfServiceText_:Ljava/lang/String;

.field private termsOfServiceUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8036
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8041
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->deprecatedResultCode_:I

    .line 8058
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    .line 8078
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceUrl_:Ljava/lang/String;

    .line 8095
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceText_:Ljava/lang/String;

    .line 8112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceName_:Ljava/lang/String;

    .line 8129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceCheckboxText_:Ljava/lang/String;

    .line 8146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceHeaderText_:Ljava/lang/String;

    .line 8163
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 8229
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->cachedSize:I

    .line 8036
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8232
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 8234
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getSerializedSize()I

    .line 8236
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->cachedSize:I

    return v0
.end method

.method public getDeprecatedResultCode()I
    .locals 1

    .prologue
    .line 8043
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->deprecatedResultCode_:I

    return v0
.end method

.method public getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 1

    .prologue
    .line 8060
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    return-object v0
.end method

.method public getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .locals 1

    .prologue
    .line 8165
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8241
    const/4 v0, 0x0

    .line 8242
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasDeprecatedResultCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8243
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getDeprecatedResultCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8246
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8247
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8250
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8251
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8254
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceText()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8255
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8258
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceName()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8259
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8262
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceCheckboxText()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8263
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceCheckboxText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8266
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceHeaderText()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8267
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8270
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseResult()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8271
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8274
    :cond_7
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->cachedSize:I

    .line 8275
    return v0
.end method

.method public getTermsOfServiceCheckboxText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8130
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceCheckboxText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceHeaderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8147
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceHeaderText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8113
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8096
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8079
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDeprecatedResultCode()Z
    .locals 1

    .prologue
    .line 8042
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasDeprecatedResultCode:Z

    return v0
.end method

.method public hasPurchaseInfo()Z
    .locals 1

    .prologue
    .line 8059
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseInfo:Z

    return v0
.end method

.method public hasPurchaseResult()Z
    .locals 1

    .prologue
    .line 8164
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseResult:Z

    return v0
.end method

.method public hasTermsOfServiceCheckboxText()Z
    .locals 1

    .prologue
    .line 8131
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceCheckboxText:Z

    return v0
.end method

.method public hasTermsOfServiceHeaderText()Z
    .locals 1

    .prologue
    .line 8148
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceHeaderText:Z

    return v0
.end method

.method public hasTermsOfServiceName()Z
    .locals 1

    .prologue
    .line 8114
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceName:Z

    return v0
.end method

.method public hasTermsOfServiceText()Z
    .locals 1

    .prologue
    .line 8097
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceText:Z

    return v0
.end method

.method public hasTermsOfServiceUrl()Z
    .locals 1

    .prologue
    .line 8080
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8283
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8284
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8288
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8289
    :sswitch_0
    return-object p0

    .line 8294
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setDeprecatedResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8298
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;-><init>()V

    .line 8299
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8300
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setPurchaseInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8304
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setTermsOfServiceUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8308
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setTermsOfServiceText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8312
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setTermsOfServiceName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8316
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setTermsOfServiceCheckboxText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8320
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setTermsOfServiceHeaderText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8324
    :sswitch_8
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;-><init>()V

    .line 8325
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8326
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8284
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
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
    .line 8034
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecatedResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasDeprecatedResultCode:Z

    .line 8046
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->deprecatedResultCode_:I

    .line 8047
    return-object p0
.end method

.method public setPurchaseInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8062
    if-nez p1, :cond_0

    .line 8063
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8065
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseInfo:Z

    .line 8066
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    .line 8067
    return-object p0
.end method

.method public setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8167
    if-nez p1, :cond_0

    .line 8168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseResult:Z

    .line 8171
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 8172
    return-object p0
.end method

.method public setTermsOfServiceCheckboxText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceCheckboxText:Z

    .line 8134
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceCheckboxText_:Ljava/lang/String;

    .line 8135
    return-object p0
.end method

.method public setTermsOfServiceHeaderText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceHeaderText:Z

    .line 8151
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceHeaderText_:Ljava/lang/String;

    .line 8152
    return-object p0
.end method

.method public setTermsOfServiceName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceName:Z

    .line 8117
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceName_:Ljava/lang/String;

    .line 8118
    return-object p0
.end method

.method public setTermsOfServiceText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceText:Z

    .line 8100
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceText_:Ljava/lang/String;

    .line 8101
    return-object p0
.end method

.method public setTermsOfServiceUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceUrl:Z

    .line 8083
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceUrl_:Ljava/lang/String;

    .line 8084
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
    .line 8203
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasDeprecatedResultCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8204
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getDeprecatedResultCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8206
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8207
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8209
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8210
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8212
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8213
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8215
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8216
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8218
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceCheckboxText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8219
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceCheckboxText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8221
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceHeaderText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8222
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8224
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseResult()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8225
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8227
    :cond_7
    return-void
.end method
