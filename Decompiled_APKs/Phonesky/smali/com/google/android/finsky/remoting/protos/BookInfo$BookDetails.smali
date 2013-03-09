.class public final Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
    }
.end annotation


# instance fields
.field private aboutTheAuthor_:Ljava/lang/String;

.field private acsEpubTokenUrl_:Ljava/lang/String;

.field private acsPdfTokenUrl_:Ljava/lang/String;

.field private audioVideoContent_:Z

.field private author_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private downloadEpubUrl_:Ljava/lang/String;

.field private downloadPdfUrl_:Ljava/lang/String;

.field private epubAvailable_:Z

.field private fixedLayoutContent_:Z

.field private hasAboutTheAuthor:Z

.field private hasAcsEpubTokenUrl:Z

.field private hasAcsPdfTokenUrl:Z

.field private hasAudioVideoContent:Z

.field private hasDownloadEpubUrl:Z

.field private hasDownloadPdfUrl:Z

.field private hasEpubAvailable:Z

.field private hasFixedLayoutContent:Z

.field private hasIsbn:Z

.field private hasNumberOfPages:Z

.field private hasPdfAvailable:Z

.field private hasPublicationDate:Z

.field private hasPublisher:Z

.field private hasReaderUrl:Z

.field private hasSubtitle:Z

.field private identifier_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private isbn_:Ljava/lang/String;

.field private numberOfPages_:I

.field private pdfAvailable_:Z

.field private publicationDate_:Ljava/lang/String;

.field private publisher_:Ljava/lang/String;

.field private readerUrl_:Ljava/lang/String;

.field private subject_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->identifier_:Ljava/util/List;

    .line 499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    .line 532
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    .line 566
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publisher_:Ljava/lang/String;

    .line 583
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publicationDate_:Ljava/lang/String;

    .line 600
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->isbn_:Ljava/lang/String;

    .line 617
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->numberOfPages_:I

    .line 634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subtitle_:Ljava/lang/String;

    .line 651
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->readerUrl_:Ljava/lang/String;

    .line 668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadEpubUrl_:Ljava/lang/String;

    .line 685
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadPdfUrl_:Ljava/lang/String;

    .line 702
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsEpubTokenUrl_:Ljava/lang/String;

    .line 719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsPdfTokenUrl_:Ljava/lang/String;

    .line 736
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->epubAvailable_:Z

    .line 753
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->pdfAvailable_:Z

    .line 770
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->fixedLayoutContent_:Z

    .line 787
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->audioVideoContent_:Z

    .line 804
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->aboutTheAuthor_:Ljava/lang/String;

    .line 910
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    .line 332
    return-void
.end method


# virtual methods
.method public addAuthor(Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    return-object p0
.end method

.method public addIdentifier(Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->identifier_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->identifier_:Ljava/util/List;

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->identifier_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    return-object p0
.end method

.method public addSubject(Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    return-object p0
.end method

.method public getAboutTheAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->aboutTheAuthor_:Ljava/lang/String;

    return-object v0
.end method

.method public getAcsEpubTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsEpubTokenUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAcsPdfTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsPdfTokenUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioVideoContent()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->audioVideoContent_:Z

    return v0
.end method

.method public getAuthorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSerializedSize()I

    .line 917
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    return v0
.end method

.method public getDownloadEpubUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadEpubUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPdfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadPdfUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getEpubAvailable()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->epubAvailable_:Z

    return v0
.end method

.method public getFixedLayoutContent()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->fixedLayoutContent_:Z

    return v0
.end method

.method public getIdentifierList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->identifier_:Ljava/util/List;

    return-object v0
.end method

.method public getIsbn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->isbn_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->numberOfPages_:I

    return v0
.end method

.method public getPdfAvailable()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->pdfAvailable_:Z

    return v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publicationDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publisher_:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->readerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 922
    const/4 v2, 0x0

    .line 923
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubjectList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    .line 924
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 927
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 928
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 931
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 932
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 935
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 936
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getIsbn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 939
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 940
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 943
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 944
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 947
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAuthorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    .line 948
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 951
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasReaderUrl()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 952
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getReaderUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 955
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadEpubUrl()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 956
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getDownloadEpubUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 959
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadPdfUrl()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 960
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getDownloadPdfUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 963
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsEpubTokenUrl()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 964
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAcsEpubTokenUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 967
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsPdfTokenUrl()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 968
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAcsPdfTokenUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 971
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasEpubAvailable()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 972
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getEpubAvailable()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 975
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPdfAvailable()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 976
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPdfAvailable()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 979
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAboutTheAuthor()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 980
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAboutTheAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 983
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getIdentifierList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;

    .line 984
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
    const/16 v3, 0x12

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 987
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasFixedLayoutContent()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 988
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getFixedLayoutContent()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 991
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAudioVideoContent()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 992
    const/16 v3, 0x16

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAudioVideoContent()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 995
    :cond_11
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    .line 996
    return v2
.end method

.method public getSubjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAboutTheAuthor()Z
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAboutTheAuthor:Z

    return v0
.end method

.method public hasAcsEpubTokenUrl()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsEpubTokenUrl:Z

    return v0
.end method

.method public hasAcsPdfTokenUrl()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsPdfTokenUrl:Z

    return v0
.end method

.method public hasAudioVideoContent()Z
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAudioVideoContent:Z

    return v0
.end method

.method public hasDownloadEpubUrl()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadEpubUrl:Z

    return v0
.end method

.method public hasDownloadPdfUrl()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadPdfUrl:Z

    return v0
.end method

.method public hasEpubAvailable()Z
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasEpubAvailable:Z

    return v0
.end method

.method public hasFixedLayoutContent()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasFixedLayoutContent:Z

    return v0
.end method

.method public hasIsbn()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn:Z

    return v0
.end method

.method public hasNumberOfPages()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages:Z

    return v0
.end method

.method public hasPdfAvailable()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPdfAvailable:Z

    return v0
.end method

.method public hasPublicationDate()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate:Z

    return v0
.end method

.method public hasPublisher()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher:Z

    return v0
.end method

.method public hasReaderUrl()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasReaderUrl:Z

    return v0
.end method

.method public hasSubtitle()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1004
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1005
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1009
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1010
    :sswitch_0
    return-object p0

    .line 1015
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;-><init>()V

    .line 1016
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1017
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->addSubject(Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1021
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setPublisher(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1025
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setPublicationDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1029
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setIsbn(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1033
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setNumberOfPages(I)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1037
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1041
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;-><init>()V

    .line 1042
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1043
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->addAuthor(Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1047
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setReaderUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1051
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setDownloadEpubUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1055
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setDownloadPdfUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1059
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setAcsEpubTokenUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1063
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setAcsPdfTokenUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1067
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setEpubAvailable(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 1071
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setPdfAvailable(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto/16 :goto_0

    .line 1075
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setAboutTheAuthor(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto/16 :goto_0

    .line 1079
    :sswitch_10
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;-><init>()V

    .line 1080
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
    const/16 v2, 0x12

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 1081
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->addIdentifier(Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto/16 :goto_0

    .line 1085
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setFixedLayoutContent(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto/16 :goto_0

    .line 1089
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setAudioVideoContent(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto/16 :goto_0

    .line 1005
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x22 -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x38 -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x52 -> :sswitch_8
        0x5a -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x78 -> :sswitch_d
        0x80 -> :sswitch_e
        0x8a -> :sswitch_f
        0x93 -> :sswitch_10
        0xa8 -> :sswitch_11
        0xb0 -> :sswitch_12
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
    .line 329
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAboutTheAuthor(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAboutTheAuthor:Z

    .line 809
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->aboutTheAuthor_:Ljava/lang/String;

    .line 810
    return-object p0
.end method

.method public setAcsEpubTokenUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsEpubTokenUrl:Z

    .line 707
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsEpubTokenUrl_:Ljava/lang/String;

    .line 708
    return-object p0
.end method

.method public setAcsPdfTokenUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsPdfTokenUrl:Z

    .line 724
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->acsPdfTokenUrl_:Ljava/lang/String;

    .line 725
    return-object p0
.end method

.method public setAudioVideoContent(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAudioVideoContent:Z

    .line 792
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->audioVideoContent_:Z

    .line 793
    return-object p0
.end method

.method public setDownloadEpubUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadEpubUrl:Z

    .line 673
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadEpubUrl_:Ljava/lang/String;

    .line 674
    return-object p0
.end method

.method public setDownloadPdfUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadPdfUrl:Z

    .line 690
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->downloadPdfUrl_:Ljava/lang/String;

    .line 691
    return-object p0
.end method

.method public setEpubAvailable(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasEpubAvailable:Z

    .line 741
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->epubAvailable_:Z

    .line 742
    return-object p0
.end method

.method public setFixedLayoutContent(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasFixedLayoutContent:Z

    .line 775
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->fixedLayoutContent_:Z

    .line 776
    return-object p0
.end method

.method public setIsbn(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn:Z

    .line 605
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->isbn_:Ljava/lang/String;

    .line 606
    return-object p0
.end method

.method public setNumberOfPages(I)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages:Z

    .line 622
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->numberOfPages_:I

    .line 623
    return-object p0
.end method

.method public setPdfAvailable(Z)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPdfAvailable:Z

    .line 758
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->pdfAvailable_:Z

    .line 759
    return-object p0
.end method

.method public setPublicationDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate:Z

    .line 588
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publicationDate_:Ljava/lang/String;

    .line 589
    return-object p0
.end method

.method public setPublisher(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher:Z

    .line 571
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publisher_:Ljava/lang/String;

    .line 572
    return-object p0
.end method

.method public setReaderUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasReaderUrl:Z

    .line 656
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->readerUrl_:Ljava/lang/String;

    .line 657
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle:Z

    .line 639
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subtitle_:Ljava/lang/String;

    .line 640
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
    .line 854
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubjectList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    .line 855
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 857
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 860
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 861
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 863
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 864
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getIsbn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 866
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 867
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 869
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 870
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 872
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAuthorList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    .line 873
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 875
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasReaderUrl()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 876
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getReaderUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 878
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadEpubUrl()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 879
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getDownloadEpubUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 881
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasDownloadPdfUrl()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 882
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getDownloadPdfUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 884
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsEpubTokenUrl()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 885
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAcsEpubTokenUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 887
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAcsPdfTokenUrl()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 888
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAcsPdfTokenUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 890
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasEpubAvailable()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 891
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getEpubAvailable()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 893
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPdfAvailable()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 894
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPdfAvailable()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 896
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAboutTheAuthor()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 897
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAboutTheAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 899
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getIdentifierList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;

    .line 900
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 902
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasFixedLayoutContent()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 903
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getFixedLayoutContent()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 905
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAudioVideoContent()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 906
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAudioVideoContent()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 908
    :cond_11
    return-void
.end method
