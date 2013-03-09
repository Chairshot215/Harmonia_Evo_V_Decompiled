.class public final Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ResolveLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ResolveLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectPurchase"
.end annotation


# instance fields
.field private cachedSize:I

.field private detailsUrl_:Ljava/lang/String;

.field private hasDetailsUrl:Z

.field private hasOfferType:Z

.field private hasParentDocid:Z

.field private hasPurchaseDocid:Z

.field private offerType_:I

.field private parentDocid_:Ljava/lang/String;

.field private purchaseDocid_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->detailsUrl_:Ljava/lang/String;

    .line 284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->purchaseDocid_:Ljava/lang/String;

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->parentDocid_:Ljava/lang/String;

    .line 318
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->offerType_:I

    .line 362
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->cachedSize:I

    .line 262
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->cachedSize:I

    if-gez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getSerializedSize()I

    .line 369
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->cachedSize:I

    return v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferType()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->offerType_:I

    return v0
.end method

.method public getParentDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->parentDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->purchaseDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasPurchaseDocid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getPurchaseDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasParentDocid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getParentDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasOfferType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getOfferType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->cachedSize:I

    .line 392
    return v0
.end method

.method public hasDetailsUrl()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasDetailsUrl:Z

    return v0
.end method

.method public hasOfferType()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasOfferType:Z

    return v0
.end method

.method public hasParentDocid()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasParentDocid:Z

    return v0
.end method

.method public hasPurchaseDocid()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasPurchaseDocid:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 401
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 405
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    :sswitch_0
    return-object p0

    .line 411
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    goto :goto_0

    .line 415
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->setPurchaseDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    goto :goto_0

    .line 419
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->setParentDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    goto :goto_0

    .line 423
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    goto :goto_0

    .line 401
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 259
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    move-result-object v0

    return-object v0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .locals 1
    .parameter "value"

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasDetailsUrl:Z

    .line 272
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->detailsUrl_:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .locals 1
    .parameter "value"

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasOfferType:Z

    .line 323
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->offerType_:I

    .line 324
    return-object p0
.end method

.method public setParentDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .locals 1
    .parameter "value"

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasParentDocid:Z

    .line 306
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->parentDocid_:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public setPurchaseDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .locals 1
    .parameter "value"

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasPurchaseDocid:Z

    .line 289
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->purchaseDocid_:Ljava/lang/String;

    .line 290
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
    .line 348
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasPurchaseDocid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getPurchaseDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasParentDocid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getParentDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->hasOfferType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getOfferType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 360
    :cond_3
    return-void
.end method
