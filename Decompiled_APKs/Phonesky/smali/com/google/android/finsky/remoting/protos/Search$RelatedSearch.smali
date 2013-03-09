.class public final Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelatedSearch"
.end annotation


# instance fields
.field private backendId_:I

.field private cachedSize:I

.field private current_:Z

.field private docType_:I

.field private hasBackendId:Z

.field private hasCurrent:Z

.field private hasDocType:Z

.field private hasHeader:Z

.field private hasSearchUrl:Z

.field private header_:Ljava/lang/String;

.field private searchUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->searchUrl_:Ljava/lang/String;

    .line 334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->header_:Ljava/lang/String;

    .line 351
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->backendId_:I

    .line 368
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->docType_:I

    .line 385
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->current_:Z

    .line 433
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->cachedSize:I

    .line 312
    return-void
.end method


# virtual methods
.method public getBackendId()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->backendId_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->cachedSize:I

    if-gez v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getSerializedSize()I

    .line 440
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->cachedSize:I

    return v0
.end method

.method public getCurrent()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->current_:Z

    return v0
.end method

.method public getDocType()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->docType_:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->searchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasSearchUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getSearchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasBackendId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getBackendId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasDocType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getDocType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 462
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasCurrent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 463
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getCurrent()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->cachedSize:I

    .line 467
    return v0
.end method

.method public hasBackendId()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasBackendId:Z

    return v0
.end method

.method public hasCurrent()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasCurrent:Z

    return v0
.end method

.method public hasDocType()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasDocType:Z

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasHeader:Z

    return v0
.end method

.method public hasSearchUrl()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasSearchUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 476
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 480
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    :sswitch_0
    return-object p0

    .line 486
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->setSearchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    goto :goto_0

    .line 490
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    goto :goto_0

    .line 494
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->setBackendId(I)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    goto :goto_0

    .line 498
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->setDocType(I)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    goto :goto_0

    .line 502
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->setCurrent(Z)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    goto :goto_0

    .line 476
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 309
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    move-result-object v0

    return-object v0
.end method

.method public setBackendId(I)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasBackendId:Z

    .line 356
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->backendId_:I

    .line 357
    return-object p0
.end method

.method public setCurrent(Z)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasCurrent:Z

    .line 390
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->current_:Z

    .line 391
    return-object p0
.end method

.method public setDocType(I)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasDocType:Z

    .line 373
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->docType_:I

    .line 374
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasHeader:Z

    .line 339
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->header_:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public setSearchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasSearchUrl:Z

    .line 322
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->searchUrl_:Ljava/lang/String;

    .line 323
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
    .line 416
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasSearchUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasBackendId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getBackendId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 425
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasDocType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getDocType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 428
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 429
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getCurrent()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 431
    :cond_4
    return-void
.end method
