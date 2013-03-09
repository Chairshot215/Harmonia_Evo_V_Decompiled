.class public final Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocumentV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocumentV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocV1"
.end annotation


# instance fields
.field private cachedSize:I

.field private creator_:Ljava/lang/String;

.field private descriptionHtml_:Ljava/lang/String;

.field private detailsUrl_:Ljava/lang/String;

.field private details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

.field private docid_:Ljava/lang/String;

.field private finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

.field private hasCreator:Z

.field private hasDescriptionHtml:Z

.field private hasDetails:Z

.field private hasDetailsUrl:Z

.field private hasDocid:Z

.field private hasFinskyDoc:Z

.field private hasMoreByBrowseUrl:Z

.field private hasMoreByHeader:Z

.field private hasMoreByListUrl:Z

.field private hasPlusOneData:Z

.field private hasRelatedBrowseUrl:Z

.field private hasRelatedHeader:Z

.field private hasRelatedListUrl:Z

.field private hasReviewsUrl:Z

.field private hasShareUrl:Z

.field private hasTitle:Z

.field private hasWarningMessage:Z

.field private moreByBrowseUrl_:Ljava/lang/String;

.field private moreByHeader_:Ljava/lang/String;

.field private moreByListUrl_:Ljava/lang/String;

.field private plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

.field private relatedBrowseUrl_:Ljava/lang/String;

.field private relatedHeader_:Ljava/lang/String;

.field private relatedListUrl_:Ljava/lang/String;

.field private reviewsUrl_:Ljava/lang/String;

.field private shareUrl_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private warningMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->docid_:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->detailsUrl_:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->reviewsUrl_:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedListUrl_:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedBrowseUrl_:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedHeader_:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByListUrl_:Ljava/lang/String;

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByBrowseUrl_:Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByHeader_:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->shareUrl_:Ljava/lang/String;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->title_:Ljava/lang/String;

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->creator_:Ljava/lang/String;

    .line 239
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->descriptionHtml_:Ljava/lang/String;

    .line 276
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->warningMessage_:Ljava/lang/String;

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->cachedSize:I

    if-gez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getSerializedSize()I

    .line 408
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->cachedSize:I

    return v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->creator_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    return-object v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->docid_:Ljava/lang/String;

    return-object v0
.end method

.method public getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    return-object v0
.end method

.method public getMoreByBrowseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByBrowseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreByHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreByListUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByListUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    return-object v0
.end method

.method public getRelatedBrowseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedBrowseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedListUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedListUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->reviewsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasFinskyDoc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDocid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasReviewsUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 427
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getReviewsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedListUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 431
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByListUrl()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 435
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasShareUrl()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 439
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasCreator()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 443
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 446
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetails()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 447
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDescriptionHtml()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 451
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 455
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 459
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 462
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedHeader()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 463
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByHeader()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 467
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 471
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasPlusOneData()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 475
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasWarningMessage()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 479
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getWarningMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 482
    :cond_10
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->cachedSize:I

    .line 483
    return v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->shareUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getWarningMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->warningMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCreator()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasCreator:Z

    return v0
.end method

.method public hasDescriptionHtml()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasDetails()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetails:Z

    return v0
.end method

.method public hasDetailsUrl()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetailsUrl:Z

    return v0
.end method

.method public hasDocid()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDocid:Z

    return v0
.end method

.method public hasFinskyDoc()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasFinskyDoc:Z

    return v0
.end method

.method public hasMoreByBrowseUrl()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl:Z

    return v0
.end method

.method public hasMoreByHeader()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByHeader:Z

    return v0
.end method

.method public hasMoreByListUrl()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByListUrl:Z

    return v0
.end method

.method public hasPlusOneData()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasPlusOneData:Z

    return v0
.end method

.method public hasRelatedBrowseUrl()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl:Z

    return v0
.end method

.method public hasRelatedHeader()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedHeader:Z

    return v0
.end method

.method public hasRelatedListUrl()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedListUrl:Z

    return v0
.end method

.method public hasReviewsUrl()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasReviewsUrl:Z

    return v0
.end method

.method public hasShareUrl()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasShareUrl:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasTitle:Z

    return v0
.end method

.method public hasWarningMessage()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasWarningMessage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 492
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 496
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    :sswitch_0
    return-object p0

    .line 502
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 503
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 504
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setFinskyDoc(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 508
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 512
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 516
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setReviewsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 520
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setRelatedListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 524
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setMoreByListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 528
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setShareUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 532
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setCreator(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 536
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;-><init>()V

    .line 537
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 538
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 542
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 546
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setRelatedBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 550
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setMoreByBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 554
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setRelatedHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto :goto_0

    .line 558
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setMoreByHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto/16 :goto_0

    .line 562
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto/16 :goto_0

    .line 566
    :sswitch_10
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;-><init>()V

    .line 567
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 568
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto/16 :goto_0

    .line 572
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->setWarningMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    goto/16 :goto_0

    .line 492
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;

    move-result-object v0

    return-object v0
.end method

.method public setCreator(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasCreator:Z

    .line 227
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->creator_:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDescriptionHtml:Z

    .line 264
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->descriptionHtml_:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 246
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetails:Z

    .line 247
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    .line 248
    return-object p0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetailsUrl:Z

    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->detailsUrl_:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public setDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDocid:Z

    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->docid_:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public setFinskyDoc(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasFinskyDoc:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 24
    return-object p0
.end method

.method public setMoreByBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl:Z

    .line 159
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByBrowseUrl_:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setMoreByHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByHeader:Z

    .line 176
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByHeader_:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setMoreByListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByListUrl:Z

    .line 142
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->moreByListUrl_:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public setPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 283
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasPlusOneData:Z

    .line 284
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->plusOneData_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    .line 285
    return-object p0
.end method

.method public setRelatedBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl:Z

    .line 108
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedBrowseUrl_:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public setRelatedHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedHeader:Z

    .line 125
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedHeader_:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public setRelatedListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedListUrl:Z

    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->relatedListUrl_:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setReviewsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasReviewsUrl:Z

    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->reviewsUrl_:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setShareUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasShareUrl:Z

    .line 193
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->shareUrl_:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasTitle:Z

    .line 210
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->title_:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public setWarningMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;
    .locals 1
    .parameter "value"

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasWarningMessage:Z

    .line 301
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->warningMessage_:Ljava/lang/String;

    .line 302
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
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasFinskyDoc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasReviewsUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 360
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedListUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 363
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByListUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 364
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 366
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasShareUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 367
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 369
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 370
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getCreator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 372
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 373
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 375
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 376
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 378
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 379
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 381
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 382
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 384
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasRelatedHeader()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 385
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getRelatedHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 387
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasMoreByHeader()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 388
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getMoreByHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 390
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 391
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 393
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasPlusOneData()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 394
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 396
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->hasWarningMessage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 397
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV1$DocV1;->getWarningMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 399
    :cond_10
    return-void
.end method
