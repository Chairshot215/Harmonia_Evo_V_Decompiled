.class public final Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BuyInstruments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BuyInstruments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateInstrumentResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private checkoutTokenRequired_:Z

.field private errorInputField_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;"
        }
    .end annotation
.end field

.field private hasCheckoutTokenRequired:Z

.field private hasInstrumentId:Z

.field private hasRedeemedOffer:Z

.field private hasResult:Z

.field private hasUserMessageHtml:Z

.field private instrumentId_:Ljava/lang/String;

.field private redeemedOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

.field private result_:I

.field private userMessageHtml_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 153
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->result_:I

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId_:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml_:Ljava/lang/String;

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField_:Ljava/util/List;

    .line 237
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired_:Z

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->cachedSize:I

    .line 143
    return-void
.end method


# virtual methods
.method public addErrorInputField(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField_:Ljava/util/List;

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getSerializedSize()I

    .line 323
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->cachedSize:I

    return v0
.end method

.method public getCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired_:Z

    return v0
.end method

.method public getErrorInputFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField_:Ljava/util/List;

    return-object v0
.end method

.method public getInstrumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemedOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 328
    const/4 v2, 0x0

    .line 329
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getInstrumentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 342
    .local v0, element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 345
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 346
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 349
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasRedeemedOffer()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 350
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getRedeemedOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 353
    :cond_5
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->cachedSize:I

    .line 354
    return v2
.end method

.method public getUserMessageHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired:Z

    return v0
.end method

.method public hasInstrumentId()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId:Z

    return v0
.end method

.method public hasRedeemedOffer()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasRedeemedOffer:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasResult:Z

    return v0
.end method

.method public hasUserMessageHtml()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 363
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 367
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    :sswitch_0
    return-object p0

    .line 373
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->setResult(I)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 377
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 381
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->setUserMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 385
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;-><init>()V

    .line 386
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 387
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->addErrorInputField(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 391
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 395
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;-><init>()V

    .line 396
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 397
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->setRedeemedOffer(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    goto :goto_0

    .line 363
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired:Z

    .line 242
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired_:Z

    .line 243
    return-object p0
.end method

.method public setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId:Z

    .line 175
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId_:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public setRedeemedOffer(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 261
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasRedeemedOffer:Z

    .line 262
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    .line 263
    return-object p0
.end method

.method public setResult(I)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasResult:Z

    .line 158
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->result_:I

    .line 159
    return-object p0
.end method

.method public setUserMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    .line 192
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml_:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getInstrumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 306
    .local v0, element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 308
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 309
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 311
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasRedeemedOffer()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 312
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getRedeemedOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 314
    :cond_5
    return-void
.end method
