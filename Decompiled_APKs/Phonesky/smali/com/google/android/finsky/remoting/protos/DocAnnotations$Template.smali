.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Template"
.end annotation


# instance fields
.field private cachedSize:I

.field private containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

.field private dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

.field private editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

.field private hasContainerWithBanner:Z

.field private hasDealOfTheDay:Z

.field private hasEditorialSeriesContainer:Z

.field private hasRecommendationsContainer:Z

.field private hasSeriesAntenna:Z

.field private hasTileDetailsReflectedGraphic2X2:Z

.field private hasTileFourBlock4X2:Z

.field private hasTileGraphic2X1:Z

.field private hasTileGraphic4X2:Z

.field private hasTileGraphicColoredTitle2X1:Z

.field private hasTileGraphicColoredTitle4X2:Z

.field private hasTileGraphicUpperLeftTitle2X1:Z

.field private recommendationsContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

.field private seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

.field private tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1166
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1171
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    .line 1191
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1211
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1231
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1251
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1271
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1291
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1311
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1331
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    .line 1351
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    .line 1371
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    .line 1391
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->recommendationsContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    .line 1470
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    .line 1166
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1473
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    if-gez v0, :cond_0

    .line 1475
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSerializedSize()I

    .line 1477
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    return v0
.end method

.method public getContainerWithBanner()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    return-object v0
.end method

.method public getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    return-object v0
.end method

.method public getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    return-object v0
.end method

.method public getRecommendationsContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->recommendationsContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1482
    const/4 v0, 0x0

    .line 1483
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1484
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1487
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1488
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1491
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1492
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1495
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1496
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1499
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1500
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1503
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1504
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileDetailsReflectedGraphic2X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1507
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1508
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileFourBlock4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1511
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1512
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getContainerWithBanner()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1515
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1516
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1519
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1520
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1523
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1524
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1527
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasRecommendationsContainer()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1528
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getRecommendationsContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1531
    :cond_b
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    .line 1532
    return v0
.end method

.method public getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    return-object v0
.end method

.method public getTileDetailsReflectedGraphic2X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileFourBlock4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphic2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphic4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphicColoredTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphicColoredTitle4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public hasContainerWithBanner()Z
    .locals 1

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner:Z

    return v0
.end method

.method public hasDealOfTheDay()Z
    .locals 1

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay:Z

    return v0
.end method

.method public hasEditorialSeriesContainer()Z
    .locals 1

    .prologue
    .line 1372
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer:Z

    return v0
.end method

.method public hasRecommendationsContainer()Z
    .locals 1

    .prologue
    .line 1392
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasRecommendationsContainer:Z

    return v0
.end method

.method public hasSeriesAntenna()Z
    .locals 1

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna:Z

    return v0
.end method

.method public hasTileDetailsReflectedGraphic2X2()Z
    .locals 1

    .prologue
    .line 1272
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2:Z

    return v0
.end method

.method public hasTileFourBlock4X2()Z
    .locals 1

    .prologue
    .line 1292
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2:Z

    return v0
.end method

.method public hasTileGraphic2X1()Z
    .locals 1

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1:Z

    return v0
.end method

.method public hasTileGraphic4X2()Z
    .locals 1

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2:Z

    return v0
.end method

.method public hasTileGraphicColoredTitle2X1()Z
    .locals 1

    .prologue
    .line 1232
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1:Z

    return v0
.end method

.method public hasTileGraphicColoredTitle4X2()Z
    .locals 1

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2:Z

    return v0
.end method

.method public hasTileGraphicUpperLeftTitle2X1()Z
    .locals 1

    .prologue
    .line 1252
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1540
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1541
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1545
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1546
    :sswitch_0
    return-object p0

    .line 1551
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;-><init>()V

    .line 1552
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1553
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setSeriesAntenna(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1557
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1558
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1559
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphic2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1563
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1564
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1565
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphic4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1569
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1570
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1571
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphicColoredTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1575
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1576
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1577
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphicUpperLeftTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1581
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1582
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1583
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileDetailsReflectedGraphic2X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1587
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1588
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1589
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileFourBlock4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1593
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;-><init>()V

    .line 1594
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1595
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setContainerWithBanner(Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1599
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;-><init>()V

    .line 1600
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1601
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setDealOfTheDay(Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1605
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1606
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1607
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphicColoredTitle4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto/16 :goto_0

    .line 1611
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;-><init>()V

    .line 1612
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1613
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setEditorialSeriesContainer(Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto/16 :goto_0

    .line 1617
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    :sswitch_c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;-><init>()V

    .line 1618
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1619
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setRecommendationsContainer(Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto/16 :goto_0

    .line 1541
    nop

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
    .line 1163
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    return-object v0
.end method

.method public setContainerWithBanner(Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1335
    if-nez p1, :cond_0

    .line 1336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1338
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner:Z

    .line 1339
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    .line 1340
    return-object p0
.end method

.method public setDealOfTheDay(Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1355
    if-nez p1, :cond_0

    .line 1356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1358
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay:Z

    .line 1359
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    .line 1360
    return-object p0
.end method

.method public setEditorialSeriesContainer(Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1375
    if-nez p1, :cond_0

    .line 1376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1378
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer:Z

    .line 1379
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    .line 1380
    return-object p0
.end method

.method public setRecommendationsContainer(Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1395
    if-nez p1, :cond_0

    .line 1396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1398
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasRecommendationsContainer:Z

    .line 1399
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->recommendationsContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    .line 1400
    return-object p0
.end method

.method public setSeriesAntenna(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1175
    if-nez p1, :cond_0

    .line 1176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1178
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna:Z

    .line 1179
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    .line 1180
    return-object p0
.end method

.method public setTileDetailsReflectedGraphic2X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1275
    if-nez p1, :cond_0

    .line 1276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1278
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2:Z

    .line 1279
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1280
    return-object p0
.end method

.method public setTileFourBlock4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1295
    if-nez p1, :cond_0

    .line 1296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2:Z

    .line 1299
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1300
    return-object p0
.end method

.method public setTileGraphic2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1195
    if-nez p1, :cond_0

    .line 1196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1198
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1:Z

    .line 1199
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1200
    return-object p0
.end method

.method public setTileGraphic4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1215
    if-nez p1, :cond_0

    .line 1216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1218
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2:Z

    .line 1219
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1220
    return-object p0
.end method

.method public setTileGraphicColoredTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1235
    if-nez p1, :cond_0

    .line 1236
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1238
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1:Z

    .line 1239
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1240
    return-object p0
.end method

.method public setTileGraphicColoredTitle4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1315
    if-nez p1, :cond_0

    .line 1316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1318
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2:Z

    .line 1319
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1320
    return-object p0
.end method

.method public setTileGraphicUpperLeftTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .locals 1
    .parameter "value"

    .prologue
    .line 1255
    if-nez p1, :cond_0

    .line 1256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1:Z

    .line 1259
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1260
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
    .line 1432
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1435
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1438
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1439
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1441
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1442
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1444
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1445
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1447
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1448
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileDetailsReflectedGraphic2X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1450
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1451
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileFourBlock4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1453
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1454
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getContainerWithBanner()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1456
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1457
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1459
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1460
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1462
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1463
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1465
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasRecommendationsContainer()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1466
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getRecommendationsContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1468
    :cond_b
    return-void
.end method
