.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicDetails"
.end annotation


# instance fields
.field private artist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private censoring_:I

.field private durationSec_:I

.field private genre_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasCensoring:Z

.field private hasDurationSec:Z

.field private hasLabel:Z

.field private hasOriginalReleaseDate:Z

.field private hasReleaseDate:Z

.field private label_:Ljava/lang/String;

.field private originalReleaseDate_:Ljava/lang/String;

.field private releaseDate_:Ljava/lang/String;

.field private releaseType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1289
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1294
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->censoring_:I

    .line 1310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    .line 1338
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->durationSec_:I

    .line 1355
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->originalReleaseDate_:Ljava/lang/String;

    .line 1372
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseDate_:Ljava/lang/String;

    .line 1389
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->label_:Ljava/lang/String;

    .line 1405
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->artist_:Ljava/util/List;

    .line 1438
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    .line 1515
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->cachedSize:I

    .line 1289
    return-void
.end method


# virtual methods
.method public addArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1422
    if-nez p1, :cond_0

    .line 1423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->artist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->artist_:Ljava/util/List;

    .line 1428
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->artist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1455
    if-nez p1, :cond_0

    .line 1456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    return-object p0
.end method

.method public addReleaseType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 2
    .parameter "value"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    return-object p0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->artist_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1518
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1520
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getSerializedSize()I

    .line 1522
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->cachedSize:I

    return v0
.end method

.method public getCensoring()I
    .locals 1

    .prologue
    .line 1296
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->censoring_:I

    return v0
.end method

.method public getDurationSec()I
    .locals 1

    .prologue
    .line 1339
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->durationSec_:I

    return v0
.end method

.method public getGenreCount()I
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGenreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->genre_:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->originalReleaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseType(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReleaseTypeCount()I
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReleaseTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseType_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1527
    const/4 v3, 0x0

    .line 1528
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasCensoring()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1529
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getCensoring()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1532
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasDurationSec()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1533
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getDurationSec()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1536
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1537
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getOriginalReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1540
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1541
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1544
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getArtistList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1545
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1549
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    :cond_4
    const/4 v0, 0x0

    .line 1550
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1551
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 1554
    .end local v1           #element:Ljava/lang/String;
    :cond_5
    add-int/2addr v3, v0

    .line 1555
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1557
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasReleaseDate()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1558
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1562
    :cond_6
    const/4 v0, 0x0

    .line 1563
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1564
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 1567
    .end local v1           #element:Ljava/lang/Integer;
    :cond_7
    add-int/2addr v3, v0

    .line 1568
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1570
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->cachedSize:I

    .line 1571
    return v3
.end method

.method public hasCensoring()Z
    .locals 1

    .prologue
    .line 1295
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasCensoring:Z

    return v0
.end method

.method public hasDurationSec()Z
    .locals 1

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasDurationSec:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel:Z

    return v0
.end method

.method public hasOriginalReleaseDate()Z
    .locals 1

    .prologue
    .line 1357
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate:Z

    return v0
.end method

.method public hasReleaseDate()Z
    .locals 1

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasReleaseDate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1579
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1580
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1584
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1585
    :sswitch_0
    return-object p0

    .line 1590
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->setCensoring(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1594
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->setDurationSec(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1598
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->setOriginalReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1602
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->setLabel(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1606
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;-><init>()V

    .line 1607
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1608
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->addArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1612
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1616
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1620
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->addReleaseType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    goto :goto_0

    .line 1580
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
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
    .line 1286
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v0

    return-object v0
.end method

.method public setCensoring(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasCensoring:Z

    .line 1299
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->censoring_:I

    .line 1300
    return-object p0
.end method

.method public setDurationSec(I)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasDurationSec:Z

    .line 1343
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->durationSec_:I

    .line 1344
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel:Z

    .line 1394
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->label_:Ljava/lang/String;

    .line 1395
    return-object p0
.end method

.method public setOriginalReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate:Z

    .line 1360
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->originalReleaseDate_:Ljava/lang/String;

    .line 1361
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasReleaseDate:Z

    .line 1377
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->releaseDate_:Ljava/lang/String;

    .line 1378
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
    .line 1489
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasCensoring()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1490
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getCensoring()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1492
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasDurationSec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1493
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getDurationSec()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1495
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1496
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getOriginalReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1498
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1499
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1501
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1502
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1504
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1505
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 1507
    .end local v0           #element:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasReleaseDate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1508
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1510
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1511
    .local v0, element:Ljava/lang/Integer;
    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_2

    .line 1513
    .end local v0           #element:Ljava/lang/Integer;
    :cond_7
    return-void
.end method
