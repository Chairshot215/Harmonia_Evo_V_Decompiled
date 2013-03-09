.class public final Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bucket"
.end annotation


# instance fields
.field private analyticsCookie_:Ljava/lang/String;

.field private cachedSize:I

.field private document_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;",
            ">;"
        }
    .end annotation
.end field

.field private estimatedResults_:J

.field private fullContentsListUrl_:Ljava/lang/String;

.field private fullContentsUrl_:Ljava/lang/String;

.field private hasAnalyticsCookie:Z

.field private hasEstimatedResults:Z

.field private hasFullContentsListUrl:Z

.field private hasFullContentsUrl:Z

.field private hasIconUrl:Z

.field private hasMultiCorpus:Z

.field private hasNextPageUrl:Z

.field private hasOrdered:Z

.field private hasRelevance:Z

.field private hasTitle:Z

.field private iconUrl_:Ljava/lang/String;

.field private multiCorpus_:Z

.field private nextPageUrl_:Ljava/lang/String;

.field private ordered_:Z

.field private relevance_:D

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    .line 216
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->multiCorpus_:Z

    .line 233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->title_:Ljava/lang/String;

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->iconUrl_:Ljava/lang/String;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsUrl_:Ljava/lang/String;

    .line 284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsListUrl_:Ljava/lang/String;

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->nextPageUrl_:Ljava/lang/String;

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->relevance_:D

    .line 335
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->estimatedResults_:J

    .line 352
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->analyticsCookie_:Ljava/lang/String;

    .line 369
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->ordered_:Z

    .line 444
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    .line 178
    return-void
.end method


# virtual methods
.method public addDocument(Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-object p0
.end method

.method public getAnalyticsCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->analyticsCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    if-gez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getSerializedSize()I

    .line 451
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    return v0
.end method

.method public getDocumentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    return-object v0
.end method

.method public getEstimatedResults()J
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->estimatedResults_:J

    return-wide v0
.end method

.method public getFullContentsListUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsListUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFullContentsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiCorpus()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->multiCorpus_:Z

    return v0
.end method

.method public getNextPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->nextPageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdered()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->ordered_:Z

    return v0
.end method

.method public getRelevance()D
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->relevance_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 456
    const/4 v2, 0x0

    .line 457
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    .line 458
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 461
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getMultiCorpus()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 466
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 469
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 470
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 473
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 474
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 477
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 478
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getRelevance()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 481
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 482
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getEstimatedResults()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 485
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 486
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 489
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsListUrl()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 490
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsListUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 493
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasNextPageUrl()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 494
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getNextPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 497
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasOrdered()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 498
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getOrdered()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 501
    :cond_a
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    .line 502
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnalyticsCookie()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    return v0
.end method

.method public hasEstimatedResults()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults:Z

    return v0
.end method

.method public hasFullContentsListUrl()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsListUrl:Z

    return v0
.end method

.method public hasFullContentsUrl()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl:Z

    return v0
.end method

.method public hasIconUrl()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl:Z

    return v0
.end method

.method public hasMultiCorpus()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus:Z

    return v0
.end method

.method public hasNextPageUrl()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasNextPageUrl:Z

    return v0
.end method

.method public hasOrdered()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasOrdered:Z

    return v0
.end method

.method public hasRelevance()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 511
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 515
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    :sswitch_0
    return-object p0

    .line 521
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;-><init>()V

    .line 522
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 523
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->addDocument(Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 527
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setMultiCorpus(Z)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 531
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 535
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setIconUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 539
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setFullContentsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 543
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setRelevance(D)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 547
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setEstimatedResults(J)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 551
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 555
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setFullContentsListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 559
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 563
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setOrdered(Z)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x31 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
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
    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v0

    return-object v0
.end method

.method public setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    .line 357
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->analyticsCookie_:Ljava/lang/String;

    .line 358
    return-object p0
.end method

.method public setEstimatedResults(J)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults:Z

    .line 340
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->estimatedResults_:J

    .line 341
    return-object p0
.end method

.method public setFullContentsListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsListUrl:Z

    .line 289
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsListUrl_:Ljava/lang/String;

    .line 290
    return-object p0
.end method

.method public setFullContentsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl:Z

    .line 272
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsUrl_:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl:Z

    .line 255
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->iconUrl_:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public setMultiCorpus(Z)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus:Z

    .line 221
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->multiCorpus_:Z

    .line 222
    return-object p0
.end method

.method public setNextPageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasNextPageUrl:Z

    .line 306
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->nextPageUrl_:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public setOrdered(Z)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasOrdered:Z

    .line 374
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->ordered_:Z

    .line 375
    return-object p0
.end method

.method public setRelevance(D)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance:Z

    .line 323
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->relevance_:D

    .line 324
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle:Z

    .line 238
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->title_:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    .line 410
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 412
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getMultiCorpus()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 416
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 419
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 421
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 422
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 424
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 425
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getRelevance()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 427
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 428
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getEstimatedResults()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 430
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 431
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 433
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsListUrl()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 434
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsListUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 436
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasNextPageUrl()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 437
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getNextPageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 439
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasOrdered()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 440
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getOrdered()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 442
    :cond_a
    return-void
.end method
