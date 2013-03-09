.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierTos"
.end annotation


# instance fields
.field private cachedSize:I

.field private dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

.field private hasDcbTos:Z

.field private hasNeedsDcbTosAcceptance:Z

.field private hasNeedsPiiTosAcceptance:Z

.field private hasPiiTos:Z

.field private needsDcbTosAcceptance_:Z

.field private needsPiiTosAcceptance_:Z

.field private piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2313
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2318
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 2338
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 2358
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance_:Z

    .line 2375
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance_:Z

    .line 2419
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    .line 2313
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2422
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    if-gez v0, :cond_0

    .line 2424
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getSerializedSize()I

    .line 2426
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    return v0
.end method

.method public getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    return-object v0
.end method

.method public getNeedsDcbTosAcceptance()Z
    .locals 1

    .prologue
    .line 2359
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance_:Z

    return v0
.end method

.method public getNeedsPiiTosAcceptance()Z
    .locals 1

    .prologue
    .line 2376
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance_:Z

    return v0
.end method

.method public getPiiTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2431
    const/4 v0, 0x0

    .line 2432
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2433
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2436
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2437
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getPiiTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2440
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2441
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsDcbTosAcceptance()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2444
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2445
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsPiiTosAcceptance()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2448
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    .line 2449
    return v0
.end method

.method public hasDcbTos()Z
    .locals 1

    .prologue
    .line 2319
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos:Z

    return v0
.end method

.method public hasNeedsDcbTosAcceptance()Z
    .locals 1

    .prologue
    .line 2360
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance:Z

    return v0
.end method

.method public hasNeedsPiiTosAcceptance()Z
    .locals 1

    .prologue
    .line 2377
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance:Z

    return v0
.end method

.method public hasPiiTos()Z
    .locals 1

    .prologue
    .line 2339
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2457
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2458
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2462
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2463
    :sswitch_0
    return-object p0

    .line 2468
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    .line 2469
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2470
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setDcbTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    goto :goto_0

    .line 2474
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    .line 2475
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2476
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setPiiTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    goto :goto_0

    .line 2480
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setNeedsDcbTosAcceptance(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    goto :goto_0

    .line 2484
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setNeedsPiiTosAcceptance(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    goto :goto_0

    .line 2458
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 2310
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v0

    return-object v0
.end method

.method public setDcbTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .locals 1
    .parameter "value"

    .prologue
    .line 2322
    if-nez p1, :cond_0

    .line 2323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2325
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos:Z

    .line 2326
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 2327
    return-object p0
.end method

.method public setNeedsDcbTosAcceptance(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .locals 1
    .parameter "value"

    .prologue
    .line 2362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance:Z

    .line 2363
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance_:Z

    .line 2364
    return-object p0
.end method

.method public setNeedsPiiTosAcceptance(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .locals 1
    .parameter "value"

    .prologue
    .line 2379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance:Z

    .line 2380
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance_:Z

    .line 2381
    return-object p0
.end method

.method public setPiiTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .locals 1
    .parameter "value"

    .prologue
    .line 2342
    if-nez p1, :cond_0

    .line 2343
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2345
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos:Z

    .line 2346
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 2347
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
    .line 2405
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2406
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2408
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2409
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getPiiTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2411
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2412
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsDcbTosAcceptance()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2414
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2415
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsPiiTosAcceptance()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2417
    :cond_3
    return-void
.end method
