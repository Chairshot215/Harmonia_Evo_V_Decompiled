.class Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;
.super Ljava/lang/Thread;
.source "ScenePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFromSceneBuilder"
.end annotation


# static fields
.field private static final BOTTOM_APP_SEGMENT:Ljava/lang/String; = "container=\"-101\""

.field private static final END_TAG_HOME_SCREEN_SETTING:Ljava/lang/String; = "</HomeScreenSetting>"


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePicker;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1392
    iput-object p2, p0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->mContext:Landroid/content/Context;

    .line 1393
    return-void
.end method

.method private DownloadBuilderScenePreview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;Ljava/lang/String;)V
    .locals 5
    .parameter "strURL"
    .parameter "strName"
    .parameter "strGUID"
    .parameter "type"
    .parameter "udpateTimestamp"

    .prologue
    .line 1531
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download builder scene file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1536
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "uri"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const-string v2, "mimetype"

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v2, "visibility"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1539
    const-string v2, "notificationpackage"

    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const-string v2, "notificationclass"

    const-class v3, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    const-string v2, "destination"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1543
    const-string v2, "notificationextras"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1546
    .local v0, uri:Landroid/net/Uri;
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download file to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkNewBuilderScene(Lcom/htc/home/personalize/scene/BuilderSceneList;)Ljava/util/ArrayList;
    .locals 11
    .parameter "buildSceneList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/home/personalize/scene/BuilderSceneList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/scene/BuilderSceneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1597
    if-eqz p1, :cond_0

    iget-object v9, p1, Lcom/htc/home/personalize/scene/BuilderSceneList;->scenes:[Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    array-length v9, v9

    if-nez v9, :cond_2

    .line 1598
    :cond_0
    const/4 v6, 0x0

    .line 1617
    :cond_1
    return-object v6

    .line 1601
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    .local v6, newSceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/BuilderSceneInfo;>;"
    iget-object v9, p0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mDatabase:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;
    invoke-static {v9}, Lcom/htc/home/personalize/scene/ScenePicker;->access$2100(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->getBuilderScenes()Ljava/util/ArrayList;

    move-result-object v1

    .line 1603
    .local v1, downloadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/BuilderSceneInfo;>;"
    if-eqz v1, :cond_1

    .line 1604
    iget-object v0, p1, Lcom/htc/home/personalize/scene/BuilderSceneList;->scenes:[Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    .local v0, arr$:[Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v8, v0, v3

    .line 1605
    .local v8, sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    const/4 v4, 0x0

    .line 1606
    .local v4, idInDb:Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    .line 1607
    .local v7, scene:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    iget-object v9, v8, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->id:Ljava/lang/String;

    iget-object v10, v7, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1608
    const/4 v4, 0x1

    .line 1612
    .end local v7           #scene:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    :cond_4
    if-nez v4, :cond_5

    .line 1613
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0
.end method

.method private checkSceneContentByGuid(Ljava/lang/String;Lcom/htc/home/personalize/scene/BuilderSceneList;)Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    .locals 8
    .parameter "strGuid"
    .parameter "sceneFormat"

    .prologue
    const/4 v4, 0x0

    .line 1516
    const-string v5, "ScenePicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check scene content by guid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v3, v4

    .line 1524
    :cond_1
    :goto_0
    return-object v3

    .line 1520
    :cond_2
    iget-object v0, p2, Lcom/htc/home/personalize/scene/BuilderSceneList;->scenes:[Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    .local v0, arr$:[Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 1521
    .local v3, sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    iget-object v5, v3, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1520
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    :cond_3
    move-object v3, v4

    .line 1524
    goto :goto_0
.end method

.method private checkSceneMaxSize(Lcom/htc/home/personalize/scene/BuilderSceneList;)Z
    .locals 5
    .parameter "sceneFormat"

    .prologue
    const/4 v2, 0x1

    .line 1621
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/htc/home/personalize/scene/BuilderSceneList;->scenes:[Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 1629
    :cond_0
    :goto_0
    return v2

    .line 1624
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    .line 1625
    .local v0, manager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->checkNewBuilderScene(Lcom/htc/home/personalize/scene/BuilderSceneList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1626
    .local v1, newSceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/BuilderSceneInfo;>;"
    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 1627
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkScenesUpdateTime(Lcom/htc/home/personalize/scene/BuilderSceneList;)Ljava/util/ArrayList;
    .locals 17
    .parameter "buildSceneList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/home/personalize/scene/BuilderSceneList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/scene/BuilderSceneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1553
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/home/personalize/scene/BuilderSceneList;->scenes:[Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    array-length v13, v13

    if-nez v13, :cond_2

    .line 1554
    :cond_0
    const/4 v12, 0x0

    .line 1590
    :cond_1
    return-object v12

    .line 1557
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1558
    .local v12, updateSceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/BuilderSceneInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mDatabase:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;
    invoke-static {v13}, Lcom/htc/home/personalize/scene/ScenePicker;->access$2100(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->getBuilderScenes()Ljava/util/ArrayList;

    move-result-object v2

    .line 1560
    .local v2, downloadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/BuilderSceneInfo;>;"
    if-eqz v2, :cond_1

    .line 1561
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/home/personalize/scene/BuilderSceneList;->scenes:[Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    .local v1, arr$:[Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v11, v1, v5

    .line 1562
    .local v11, sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    const/4 v6, 0x0

    .line 1563
    .local v6, idInDb:Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5           #i$:I
    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    .line 1564
    .local v10, scene:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    iget-object v13, v11, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->id:Ljava/lang/String;

    iget-object v14, v10, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1565
    const/4 v6, 0x1

    .line 1568
    :try_start_0
    iget-object v13, v10, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->updatedTimestamp:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1569
    .local v9, oldTime:Ljava/lang/Long;
    iget-object v13, v11, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->updatedTimestamp:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1570
    .local v8, newTime:Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_4

    .line 1571
    const-string v13, "ScenePicker"

    const-string v14, "Add scene to update list because it\'s too old"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    const-string v13, "ScenePicker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Org: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    const-string v13, "ScenePicker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "New: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    .end local v8           #newTime:Ljava/lang/Long;
    .end local v9           #oldTime:Ljava/lang/Long;
    .end local v10           #scene:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    :cond_4
    :goto_1
    if-nez v6, :cond_5

    .line 1585
    const-string v13, "ScenePicker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Add scene to update list because it\'s not in db: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    :cond_5
    add-int/lit8 v4, v5, 0x1

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto/16 :goto_0

    .line 1576
    .end local v5           #i$:I
    .local v4, i$:Ljava/util/Iterator;
    .restart local v10       #scene:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    :catch_0
    move-exception v3

    .line 1577
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v13, "ScenePicker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TimeStamp format error at sceneInfo: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", and scene: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private containsBottomBarApps(Ljava/lang/String;)Z
    .locals 2
    .parameter "sceneContent"

    .prologue
    const/4 v0, 0x0

    .line 1637
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return v0

    .line 1639
    :cond_1
    const-string v1, "container=\"-101\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1640
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private putBottomBarAppsToSceneContent(Lcom/htc/home/personalize/scene/SceneContent;)V
    .locals 6
    .parameter "content"

    .prologue
    .line 1648
    if-nez p1, :cond_1

    .line 1649
    const-string v3, "ScenePicker"

    const-string v4, "putBottomBarAppsToSceneContent content is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_0
    :goto_0
    return-void

    .line 1652
    :cond_1
    iget-object v3, p1, Lcom/htc/home/personalize/scene/SceneContent;->sceneData:Ljava/lang/String;

    const-string v4, "</HomeScreenSetting>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1653
    .local v1, nIndexEndTagHomeScreen:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 1654
    const-string v3, "ScenePicker"

    const-string v4, "putBottomBarAppsToSceneContent no end tag of HomeScreenSetting"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1657
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->getDefaultBottomAppsToXmlString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1658
    .local v2, strBottomAppsXml:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1660
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/htc/home/personalize/scene/SceneContent;->sceneData:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    iget-object v3, p1, Lcom/htc/home/personalize/scene/SceneContent;->sceneData:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/home/personalize/scene/SceneContent;->sceneData:Ljava/lang/String;

    .line 1665
    const-string v3, "ScenePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content.sceneData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/home/personalize/scene/SceneContent;->sceneData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v17

    .line 1399
    .local v17, manager:Lcom/htc/htcSceneManager/scene/SceneManager;
    const/4 v11, 0x0

    .line 1400
    .local v11, csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    const/16 v19, 0x0

    .line 1403
    .local v19, output:Ljava/lang/String;
    :try_start_0
    new-instance v12, Lcom/htc/cslib/restHelper/CSRestProxy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/home/personalize/scene/ScenePicker;->access$1900(Lcom/htc/home/personalize/scene/ScenePicker;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "personalize"

    invoke-direct {v12, v2, v3, v4}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    .end local v11           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .local v12, csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    :try_start_1
    const-string v2, "/scenes"

    const-string v3, ""

    invoke-virtual {v12, v2, v3}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1406
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Get JSON string for scene list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    new-instance v22, Lcom/htc/home/personalize/scene/BuilderSceneList;

    invoke-direct/range {v22 .. v22}, Lcom/htc/home/personalize/scene/BuilderSceneList;-><init>()V

    .line 1409
    .local v22, sceneFormat:Lcom/htc/home/personalize/scene/BuilderSceneList;
    const-class v2, Lcom/htc/home/personalize/scene/BuilderSceneList;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sceneFormat:Lcom/htc/home/personalize/scene/BuilderSceneList;
    check-cast v22, Lcom/htc/home/personalize/scene/BuilderSceneList;

    .line 1410
    .restart local v22       #sceneFormat:Lcom/htc/home/personalize/scene/BuilderSceneList;
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Get sceneFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1417
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/htc/home/personalize/scene/BuilderSceneList;->hasContent:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, v22

    iget v2, v0, Lcom/htc/home/personalize/scene/BuilderSceneList;->count:I

    if-nez v2, :cond_2

    .line 1418
    :cond_0
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sceneFormat error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    if-eqz v22, :cond_1

    .line 1420
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "or has no content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneList;->hasContent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneList;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v11, v12

    .line 1510
    .end local v12           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .end local v22           #sceneFormat:Lcom/htc/home/personalize/scene/BuilderSceneList;
    .restart local v11       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    :goto_0
    return-void

    .line 1412
    :catch_0
    move-exception v13

    .line 1414
    .local v13, e:Ljava/lang/Exception;
    :goto_1
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Get e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1425
    .end local v11           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v12       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v22       #sceneFormat:Lcom/htc/home/personalize/scene/BuilderSceneList;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->checkSceneMaxSize(Lcom/htc/home/personalize/scene/BuilderSceneList;)Z

    move-result v16

    .line 1426
    .local v16, isDownloadBuilderScene:Z
    if-nez v16, :cond_3

    .line 1427
    const-string v2, "ScenePicker"

    const-string v3, "It\'s over the max size of the scene list, so can not download the builder scenes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 1428
    .end local v12           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v11       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    goto :goto_0

    .line 1431
    .end local v11           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v12       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->checkScenesUpdateTime(Lcom/htc/home/personalize/scene/BuilderSceneList;)Ljava/util/ArrayList;

    move-result-object v27

    .line 1438
    .local v27, updateSceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/BuilderSceneInfo;>;"
    if-eqz v27, :cond_e

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_e

    .line 1439
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v2, "/scenes/data?id="

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v26, strBuilder:Ljava/lang/StringBuilder;
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    .line 1441
    .local v24, sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->id:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_4

    .line 1443
    const/16 v2, 0x2c

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1446
    .end local v24           #sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    :cond_5
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSceneList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/16 v20, 0x0

    .line 1450
    .local v20, sceneData:Lcom/htc/home/personalize/scene/BuilderSceneData;
    :try_start_2
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v12, v2, v3}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1451
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Get JSON string for scene data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    new-instance v21, Lcom/htc/home/personalize/scene/BuilderSceneData;

    invoke-direct/range {v21 .. v21}, Lcom/htc/home/personalize/scene/BuilderSceneData;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1454
    .end local v20           #sceneData:Lcom/htc/home/personalize/scene/BuilderSceneData;
    .local v21, sceneData:Lcom/htc/home/personalize/scene/BuilderSceneData;
    :try_start_3
    const-class v2, Lcom/htc/home/personalize/scene/BuilderSceneData;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/home/personalize/scene/BuilderSceneData;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1455
    .end local v21           #sceneData:Lcom/htc/home/personalize/scene/BuilderSceneData;
    .restart local v20       #sceneData:Lcom/htc/home/personalize/scene/BuilderSceneData;
    :try_start_4
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Get sceneData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1463
    if-eqz v20, :cond_6

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/htc/home/personalize/scene/BuilderSceneData;->hasContent:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, v20

    iget v2, v0, Lcom/htc/home/personalize/scene/BuilderSceneData;->count:I

    if-nez v2, :cond_7

    :cond_6
    move-object v11, v12

    .line 1464
    .end local v12           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v11       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    goto/16 :goto_0

    .line 1457
    .end local v11           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v12       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    :catch_1
    move-exception v13

    .line 1459
    .restart local v13       #e:Ljava/lang/Exception;
    :goto_3
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Get e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 1460
    .end local v12           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v11       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    goto/16 :goto_0

    .line 1466
    .end local v11           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v12       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->getIsSaveBottomBarApps(Landroid/content/Context;)Z

    move-result v9

    .line 1467
    .local v9, bIsSaveBottombarApps:Z
    if-nez v9, :cond_8

    .line 1468
    const-string v2, "ScenePicker"

    const-string v3, "Haven\'t save bottom bar apps, reload..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->saveDefaultBottomBarApps(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;)V

    .line 1471
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v18

    .line 1472
    .local v18, nCurrentSceneId:I
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/home/personalize/scene/BuilderSceneData;->scenes:[Lcom/htc/home/personalize/scene/SceneContent;

    array-length v2, v2

    new-array v0, v2, [I

    move-object/from16 v25, v0

    .line 1473
    .local v25, scenesId:[I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/home/personalize/scene/BuilderSceneData;->scenes:[Lcom/htc/home/personalize/scene/SceneContent;

    array-length v2, v2

    if-ge v14, v2, :cond_d

    .line 1475
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/home/personalize/scene/BuilderSceneData;->scenes:[Lcom/htc/home/personalize/scene/SceneContent;

    aget-object v10, v2, v14

    .line 1476
    .local v10, content:Lcom/htc/home/personalize/scene/SceneContent;
    iget-object v2, v10, Lcom/htc/home/personalize/scene/SceneContent;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->checkSceneContentByGuid(Ljava/lang/String;Lcom/htc/home/personalize/scene/BuilderSceneList;)Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    move-result-object v24

    .line 1477
    .restart local v24       #sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    if-eqz v24, :cond_b

    .line 1478
    iget-object v2, v10, Lcom/htc/home/personalize/scene/SceneContent;->sceneData:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->containsBottomBarApps(Ljava/lang/String;)Z

    move-result v8

    .line 1479
    .local v8, bContainsBottomBarApps:Z
    if-nez v8, :cond_9

    .line 1480
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->putBottomBarAppsToSceneContent(Lcom/htc/home/personalize/scene/SceneContent;)V

    .line 1483
    :cond_9
    const/16 v23, -0x1

    .line 1484
    .local v23, sceneId:I
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/home/personalize/scene/BuilderSceneData;->scenes:[Lcom/htc/home/personalize/scene/SceneContent;

    aget-object v2, v2, v14

    iget-object v2, v2, Lcom/htc/home/personalize/scene/SceneContent;->id:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/htc/home/personalize/scene/BuilderSceneData;->scenes:[Lcom/htc/home/personalize/scene/SceneContent;

    aget-object v3, v3, v14

    iget-object v3, v3, Lcom/htc/home/personalize/scene/SceneContent;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneData;->scenes:[Lcom/htc/home/personalize/scene/SceneContent;

    aget-object v4, v4, v14

    iget-object v4, v4, Lcom/htc/home/personalize/scene/SceneContent;->sceneData:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->addBuilderScene(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 1487
    move/from16 v0, v23

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->mContext:Landroid/content/Context;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper;->loadHomeWallpaper(Landroid/content/Context;I)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->showUpdateCurrentSceneToast()V
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$2000(Lcom/htc/home/personalize/scene/ScenePicker;)V

    .line 1494
    :cond_a
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_c

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mDatabase:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$2100(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->insertBuilderSceneInfo(Lcom/htc/home/personalize/scene/BuilderSceneInfo;)V

    .line 1497
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->portraitPreviewImageUrl:Ljava/lang/String;

    iget-object v4, v10, Lcom/htc/home/personalize/scene/SceneContent;->name:Ljava/lang/String;

    iget-object v5, v10, Lcom/htc/home/personalize/scene/SceneContent;->id:Ljava/lang/String;

    sget-object v6, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;->PreviewImage:Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->updatedTimestamp:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->DownloadBuilderScenePreview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;Ljava/lang/String;)V

    .line 1498
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->landscapePreviewImageUrl:Ljava/lang/String;

    iget-object v4, v10, Lcom/htc/home/personalize/scene/SceneContent;->name:Ljava/lang/String;

    iget-object v5, v10, Lcom/htc/home/personalize/scene/SceneContent;->id:Ljava/lang/String;

    sget-object v6, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;->PreviewImage:Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->updatedTimestamp:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->DownloadBuilderScenePreview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;Ljava/lang/String;)V

    .line 1473
    .end local v8           #bContainsBottomBarApps:Z
    .end local v23           #sceneId:I
    :cond_b
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 1503
    .restart local v8       #bContainsBottomBarApps:Z
    .restart local v23       #sceneId:I
    :cond_c
    const-string v2, "ScenePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBuilderScene: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/htc/home/personalize/scene/BuilderSceneData;->scenes:[Lcom/htc/home/personalize/scene/SceneContent;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/htc/home/personalize/scene/SceneContent;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1508
    .end local v8           #bContainsBottomBarApps:Z
    .end local v10           #content:Lcom/htc/home/personalize/scene/SceneContent;
    .end local v23           #sceneId:I
    .end local v24           #sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->notifySceneChanged(I[I)V

    .end local v9           #bIsSaveBottombarApps:Z
    .end local v14           #i:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v18           #nCurrentSceneId:I
    .end local v20           #sceneData:Lcom/htc/home/personalize/scene/BuilderSceneData;
    .end local v25           #scenesId:[I
    .end local v26           #strBuilder:Ljava/lang/StringBuilder;
    :cond_e
    move-object v11, v12

    .line 1510
    .end local v12           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v11       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    goto/16 :goto_0

    .line 1457
    .end local v11           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v12       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v21       #sceneData:Lcom/htc/home/personalize/scene/BuilderSceneData;
    .restart local v26       #strBuilder:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v13

    move-object/from16 v20, v21

    .end local v21           #sceneData:Lcom/htc/home/personalize/scene/BuilderSceneData;
    .restart local v20       #sceneData:Lcom/htc/home/personalize/scene/BuilderSceneData;
    goto/16 :goto_3

    .line 1412
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #isDownloadBuilderScene:Z
    .end local v20           #sceneData:Lcom/htc/home/personalize/scene/BuilderSceneData;
    .end local v22           #sceneFormat:Lcom/htc/home/personalize/scene/BuilderSceneList;
    .end local v26           #strBuilder:Ljava/lang/StringBuilder;
    .end local v27           #updateSceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/BuilderSceneInfo;>;"
    :catch_3
    move-exception v13

    move-object v11, v12

    .end local v12           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v11       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    goto/16 :goto_1
.end method
