.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SectionMetadata"
.end annotation


# instance fields
.field private browseUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private descriptionHtml_:Ljava/lang/String;

.field private hasBrowseUrl:Z

.field private hasDescriptionHtml:Z

.field private hasHeader:Z

.field private hasListUrl:Z

.field private header_:Ljava/lang/String;

.field private listUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->header_:Ljava/lang/String;

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->descriptionHtml_:Ljava/lang/String;

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->listUrl_:Ljava/lang/String;

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->browseUrl_:Ljava/lang/String;

    .line 383
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->cachedSize:I

    .line 283
    return-void
.end method


# virtual methods
.method public getBrowseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->browseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->cachedSize:I

    if-gez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getSerializedSize()I

    .line 390
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->cachedSize:I

    return v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getListUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->listUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasListUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasDescriptionHtml()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 412
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->cachedSize:I

    .line 413
    return v0
.end method

.method public hasBrowseUrl()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasBrowseUrl:Z

    return v0
.end method

.method public hasDescriptionHtml()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasHeader:Z

    return v0
.end method

.method public hasListUrl()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasListUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 422
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 426
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    :sswitch_0
    return-object p0

    .line 432
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    goto :goto_0

    .line 436
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->setListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    goto :goto_0

    .line 440
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    goto :goto_0

    .line 444
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    goto :goto_0

    .line 422
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 280
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasBrowseUrl:Z

    .line 344
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->browseUrl_:Ljava/lang/String;

    .line 345
    return-object p0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasDescriptionHtml:Z

    .line 310
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->descriptionHtml_:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasHeader:Z

    .line 293
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->header_:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public setListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasListUrl:Z

    .line 327
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->listUrl_:Ljava/lang/String;

    .line 328
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
    .line 369
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasListUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 378
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 381
    :cond_3
    return-void
.end method
