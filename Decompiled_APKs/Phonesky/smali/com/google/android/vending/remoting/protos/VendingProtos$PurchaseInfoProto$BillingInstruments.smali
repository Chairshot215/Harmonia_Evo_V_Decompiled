.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingInstruments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    }
.end annotation


# instance fields
.field private billingInstrument_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private defaultBillingInstrumentId_:Ljava/lang/String;

.field private hasDefaultBillingInstrumentId:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->billingInstrument_:Ljava/util/List;

    .line 283
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->defaultBillingInstrumentId_:Ljava/lang/String;

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->cachedSize:I

    .line 31
    return-void
.end method


# virtual methods
.method public addBillingInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    .locals 1
    .parameter "value"

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->billingInstrument_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->billingInstrument_:Ljava/util/List;

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->billingInstrument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    return-object p0
.end method

.method public getBillingInstrumentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->billingInstrument_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->cachedSize:I

    if-gez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->getSerializedSize()I

    .line 329
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->cachedSize:I

    return v0
.end method

.method public getDefaultBillingInstrumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->defaultBillingInstrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->getBillingInstrumentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    .line 336
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 339
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->hasDefaultBillingInstrumentId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->getDefaultBillingInstrumentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 343
    :cond_1
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->cachedSize:I

    .line 344
    return v2
.end method

.method public hasDefaultBillingInstrumentId()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->hasDefaultBillingInstrumentId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 353
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 357
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    :sswitch_0
    return-object p0

    .line 363
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;-><init>()V

    .line 364
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 365
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->addBillingInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    goto :goto_0

    .line 369
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->setDefaultBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    goto :goto_0

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x23 -> :sswitch_1
        0x42 -> :sswitch_2
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
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    .locals 1
    .parameter "value"

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->hasDefaultBillingInstrumentId:Z

    .line 288
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->defaultBillingInstrumentId_:Ljava/lang/String;

    .line 289
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
    .line 314
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->getBillingInstrumentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    .line 315
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 317
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->hasDefaultBillingInstrumentId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;->getDefaultBillingInstrumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 320
    :cond_1
    return-void
.end method
