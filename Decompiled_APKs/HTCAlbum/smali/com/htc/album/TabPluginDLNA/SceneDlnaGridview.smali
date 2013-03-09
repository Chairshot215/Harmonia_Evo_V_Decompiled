.class public Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;
.super Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;
.source "SceneDlnaGridview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase",
        "<",
        "Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_DLNA_GRID_VIEW:I = 0x1

.field private static final GO_BACK_TYPE_DEFAULT:I = 0x0

.field private static final HEADER_BAR_DLNA_GRID_VIEW:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SceneDlnaGridview"

.field private static final VIDEO_LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final VIDEO_LAUNCHER:Ljava/lang/String; = "launcher"


# instance fields
.field private final SCENE_ID:I

.field private bContainerActivityForeground:Z

.field private mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;-><init>()V

    .line 34
    const-class v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->SCENE_ID:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 45
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 48
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;)Lcom/htc/sunny2/view/Vector3F;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method private cancelAllRequestingContent()V
    .locals 5

    .prologue
    .line 879
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_0

    .line 895
    :goto_0
    return-void

    .line 882
    :cond_0
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview]cancelRequestingContent"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->cancelThumbnailDownloadRequests()V

    .line 886
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    .line 888
    .local v0, gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v1, :cond_1

    .line 890
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->browseCancel(Ljava/lang/String;Ljava/lang/String;J)V

    .line 894
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->setLoadMoreState(Z)V

    goto :goto_0
.end method

.method private getFirstValidPos()I
    .locals 6

    .prologue
    .line 848
    const/4 v3, -0x1

    .line 850
    .local v3, pos:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v5, :cond_0

    move v4, v3

    .line 872
    .end local v3           #pos:I
    .local v4, pos:I
    :goto_0
    return v4

    .line 853
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getCount()I

    move-result v0

    .line 854
    .local v0, count:I
    if-gtz v0, :cond_1

    move v4, v3

    .line 855
    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_0

    .line 857
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :cond_1
    const/4 v2, 0x0

    .line 858
    .local v2, obj:Ljava/lang/Object;
    const/4 v1, 0x0

    .end local v2           #obj:Ljava/lang/Object;
    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 860
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v5, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .line 862
    .local v2, obj:Lcom/htc/sunny2/IMediaData;
    if-nez v2, :cond_3

    .line 858
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 865
    :cond_3
    instance-of v5, v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v5, :cond_2

    .line 867
    move v3, v1

    .end local v2           #obj:Lcom/htc/sunny2/IMediaData;
    :cond_4
    move v4, v3

    .line 872
    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_0
.end method

.method private onDMRChanged(Ljava/lang/String;I)V
    .locals 23
    .parameter "selectDMR"
    .parameter "pos"

    .prologue
    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v3, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v13

    .line 769
    .local v13, intent:Landroid/content/Intent;
    const-string v3, "DLNA_SERVER"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 770
    .local v19, serverId:Ljava/lang/String;
    const-string v3, "DLNA_CONTAINER"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 772
    .local v8, container:Ljava/lang/String;
    const-string v3, "SceneDlnaGridview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaGridview][onDMRChanged]: pos :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const/4 v3, -0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v16

    .line 778
    .local v16, obj:Lcom/htc/sunny2/IMediaData;
    if-eqz v16, :cond_0

    move-object/from16 v15, v16

    .line 781
    check-cast v15, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 783
    .local v15, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 784
    .local v9, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v9, :cond_0

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 788
    .local v20, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    if-eqz v20, :cond_0

    .line 791
    const-wide/16 v21, -0x1

    .line 792
    .local v21, startIndex:J
    const-wide/16 v11, -0x1

    .line 793
    .local v11, endIndex:J
    const/4 v10, 0x0

    .line 794
    .local v10, direction:I
    const/16 v18, 0x0

    .line 796
    .local v18, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v17

    .line 797
    .local v17, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static/range {v17 .. v17}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectoriesToStringURI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v14

    .line 799
    .local v14, location:Ljava/lang/String;
    const-string v3, "2"

    iget-object v4, v15, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 801
    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 803
    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v21

    .line 804
    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v11

    .line 805
    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v10

    .line 808
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 810
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 811
    .local v7, bundle:Landroid/os/Bundle;
    const-string v3, "folder_type"

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v3, "startIdx"

    move-wide/from16 v0, v21

    invoke-virtual {v7, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 813
    const-string v3, "endIdx"

    invoke-virtual {v7, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 814
    const-string v3, "direction"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    const-string v3, "key_bucket_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v3, "key_folder_name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v3, "location"

    invoke-virtual {v7, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v3, "directory_info"

    move-object/from16 v0, v17

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 819
    const/4 v2, 0x0

    .line 820
    .local v2, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_3

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .line 823
    :cond_3
    if-eqz v2, :cond_0

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v15, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerPhotos(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 826
    .end local v2           #activity:Landroid/app/Activity;
    .end local v7           #bundle:Landroid/os/Bundle;
    :cond_4
    const-string v3, "4"

    iget-object v4, v15, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 830
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 831
    .restart local v7       #bundle:Landroid/os/Bundle;
    const-string v3, "folder_type"

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v3, "key_bucket_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v3, "key_folder_name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v3, "location"

    invoke-virtual {v7, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v3, "directory_info"

    move-object/from16 v0, v17

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 836
    const/4 v2, 0x0

    .line 837
    .restart local v2       #activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_5

    .line 838
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .line 840
    :cond_5
    if-eqz v2, :cond_0

    .line 841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v15, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "AdapterDlnaMediumItem"

    return-object v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 596
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 597
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v0, :cond_0

    .line 587
    const/4 v0, 0x0

    .line 588
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyDataChangedAt(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 69
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][notifyDataChangedAt]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    .line 71
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->notifyDataSetChanged()V

    .line 63
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    .line 64
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][notifyDataSetChanged]..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 702
    const/16 v7, 0x1398

    if-ne p1, v7, :cond_0

    if-ne p2, v9, :cond_0

    .line 704
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v7, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 708
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0, v8}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 709
    .local v4, oldDMR:Ljava/lang/String;
    const-string v7, "DMR"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 710
    .local v6, selectDMR:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 712
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 713
    .local v2, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 715
    .local v1, directMode:I
    if-eqz v2, :cond_2

    .line 717
    const-string v7, "directmode"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 719
    if-ne v1, v10, :cond_2

    .line 722
    const-string v7, "directmode"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    const-string v7, "SceneDlnaGridview"

    const-string v8, "[HTCAlbum][SceneDlnaGridview][onActivityResult]: Reset direct mode"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_2
    const/4 v5, -0x1

    .line 729
    .local v5, pos:I
    if-ne v1, v10, :cond_4

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_4

    .line 731
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v5

    .line 738
    :goto_1
    if-eq v5, v9, :cond_0

    .line 741
    if-nez v6, :cond_5

    .line 743
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v7, :cond_0

    .line 746
    if-eqz v4, :cond_3

    .line 747
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v7, v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->destroyController(Ljava/lang/String;)V

    .line 749
    :cond_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v7, v5}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 750
    .local v3, obj:Lcom/htc/sunny2/IMediaData;
    instance-of v7, v3, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v7, :cond_0

    .line 751
    check-cast v3, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v3           #obj:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {p0, v5, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToActivityView(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0

    .line 735
    :cond_4
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getFirstValidPos()I

    move-result v5

    goto :goto_1

    .line 756
    :cond_5
    invoke-direct {p0, v6, v5}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onDMRChanged(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 647
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 649
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v5

    .line 652
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 653
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 656
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 657
    .local v3, newIntent:Landroid/content/Intent;
    const-class v6, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 658
    const-string v6, "tab_default"

    const v7, 0x7f0b00b0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 661
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 663
    const-string v6, "directmode"

    const-string v7, "directmode"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const-string v6, "browse_mode"

    const-string v7, "browse_mode"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 665
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 667
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 668
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "server_id"

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "server_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v5, "server_name"

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "server_name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_3

    .line 673
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 674
    .local v4, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    const-string v5, "directory_info"

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 681
    .end local v4           #serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    :goto_1
    const-string v5, "browse_info"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 682
    const-string v5, "com.htc.album.action.DLNA_BROWSE_DMS_RECOVERY"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_2
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 687
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 688
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 689
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 678
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_3
    const-string v5, "directory_info"

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "directory_info"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onBindAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onBindAdapter()V

    .line 261
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 262
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->invalidateControlBars()V

    .line 263
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    .line 264
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onControlButtonClick]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 290
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onBackPressed()Z

    goto :goto_0

    .line 293
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->showOutputChoice()V

    goto :goto_0

    .line 296
    :sswitch_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->refreshFolder()V

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onNotifyUpdating(Z)V

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    goto :goto_0

    .line 286
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_2
        0x10 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 250
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 253
    :cond_0
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 602
    const-string v3, "SceneDlnaGridview"

    const-string v4, "[HtcAlbum][SceneDlnaGridview][onCreateFooterBar]  "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 605
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 606
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 607
    const/4 v3, 0x6

    const v5, 0x20c0202

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 609
    const-string v2, "SceneDlnaGridview"

    const-string v3, "onCreateFooterBar"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 4
    .parameter "id"

    .prologue
    .line 568
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 569
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 570
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 571
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 572
    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    .line 575
    const-string v2, "SceneDlnaGridview"

    const-string v3, "onCreateHeaderBar"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-object v1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    const-string v2, "SceneDlnaGridview"

    const-string v3, "[HTCAlbum][SceneDlnaGridView][onCreateScene]"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v1

    .line 202
    .local v1, gridview:Lcom/htc/sunny2/widget/gridview/GridView;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 208
    return-object v1
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 244
    new-instance v1, Lcom/htc/album/Animation/animationSetGridview;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyAdapter()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onDestroyAdapter()V

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onDestroyAdapter()V

    .line 109
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 214
    const-string v2, "SceneDlnaGridview"

    const-string v3, "[HTCAlbum][SceneDlnaGridview][onEnterScene]"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 217
    if-eqz p1, :cond_1

    .line 219
    const-string v2, "directory_info"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    .local v0, importInfo:Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v2, :cond_0

    .line 223
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v3, "server_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v3, "server_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 229
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 231
    .local v1, nIndexCurrentDirectory:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    .line 232
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    .line 234
    const-string v2, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][onEnterScene]: Directories: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v2, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][onEnterScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v0           #importInfo:Ljava/util/ArrayList;
    .end local v1           #nIndexCurrentDirectory:I
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->createControlBar(II)V

    .line 239
    invoke-virtual {p0, v6, v5}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->createControlBar(II)V

    .line 241
    return-void
.end method

.method protected onGoToActivityView(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 5
    .parameter "nIndex"
    .parameter "mediumInfo"

    .prologue
    .line 426
    const-string v2, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][onGoToActivityView]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 432
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v0, :cond_0

    .line 435
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 437
    .local v1, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    const-string v2, "2"

    iget-object v3, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToViewImage(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0

    .line 441
    :cond_2
    const-string v2, "4"

    iget-object v3, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToViewVideo(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0
.end method

.method public onGoToViewImage(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 16
    .parameter "nIndex"
    .parameter "dirInfo"
    .parameter "serviceDirectory"
    .parameter "mediumInfo"

    .prologue
    .line 451
    const-wide/16 v14, -0x1

    .local v14, startIndex:J
    const-wide/16 v9, -0x1

    .line 452
    .local v9, endIndex:J
    const/4 v8, 0x0

    .line 453
    .local v8, direction:I
    const/4 v13, 0x0

    .line 455
    .local v13, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v12

    .line 456
    .local v12, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, dmr:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectoriesToStringURI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .line 459
    .local v11, location:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 461
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v14

    .line 462
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v9

    .line 463
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v8

    .line 466
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 468
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v3

    if-ne v1, v3, :cond_1

    .line 473
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 474
    .local v6, bundle:Landroid/os/Bundle;
    const-string v1, "folder_type"

    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "startIdx"

    invoke-virtual {v6, v1, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 476
    const-string v1, "endIdx"

    invoke-virtual {v6, v1, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 477
    const-string v1, "direction"

    invoke-virtual {v6, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 478
    const-string v1, "key_bucket_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v1, "key_folder_name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v1, "location"

    invoke-virtual {v6, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "directory_info"

    invoke-virtual {v6, v1, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerPhotos(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 494
    .end local v6           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 487
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v7, Lcom/htc/album/Animation/animationSetGridview;

    .line 488
    .local v7, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    move/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunny2/view/Vector3F;)V

    .line 489
    const-string v1, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][onGoToActivityView]1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "directory_info"

    invoke-virtual {v1, v3, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "DLNA_CONTENT"

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "SceneDlnaFullscreen"

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onGoToViewVideo(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 13
    .parameter "nIndex"
    .parameter "dirInfo"
    .parameter "serviceDirectory"
    .parameter "mediumInfo"

    .prologue
    .line 500
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v12

    .line 501
    .local v12, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, dmr:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectoriesToStringURI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .line 504
    .local v11, location:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 506
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v3

    if-ne v1, v3, :cond_1

    .line 510
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v6, bundle:Landroid/os/Bundle;
    const-string v1, "folder_type"

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v1, "key_bucket_id"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v1, "key_folder_name"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v1, "location"

    invoke-virtual {v6, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v1, "directory_info"

    invoke-virtual {v6, v1, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 516
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 556
    .end local v6           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 521
    .local v7, bunBrowse:Landroid/os/Bundle;
    const-string v1, "key_bucket_id"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v1, "key_folder_name"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "location"

    invoke-virtual {v7, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v1, "directory_info"

    invoke-virtual {v7, v1, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 525
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v10, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 526
    .local v10, intent:Landroid/content/Intent;
    const/4 v8, 0x1

    .line 529
    .local v8, canPlay:Z
    :try_start_0
    const-string v1, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launch Video Player "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v1, "com.htc.video"

    const-string v3, "com.htc.video.ViewVideo"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "video/3gpp"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v1, "landscape"

    const/4 v3, 0x1

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    const-string v1, "launcher"

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    const-string v1, "DLNA_SERVER"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v1, "DLNA_CONTENT"

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string v1, "DLNA_CONTENT_TITLE"

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const-string v1, "DLNA_CONTAINER"

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v1, "Extras"

    invoke-virtual {v10, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 540
    const-string v1, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][LaunchVideo]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v10, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_1
    if-nez v8, :cond_0

    .line 552
    const-string v1, "com.htc.album"

    const-string v3, "com.htc.album.TabPluginDevice.ViewVideo"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v10, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 544
    :catch_0
    move-exception v9

    .line 546
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launch Video Player failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public onItemClickMediumInfo(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 6
    .parameter "nIndex"
    .parameter "mediumInfo"

    .prologue
    const/4 v5, 0x1

    .line 392
    const-string v1, "SceneDlnaGridview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "2"

    iget-object v2, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    iget-object v2, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, dmr:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "directmode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 405
    const-string v1, "SceneDlnaGridview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneDlnaGridview][onItemClickMediumInfo]index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0x1398

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v5, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 422
    .end local v0           #dmr:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 414
    .restart local v0       #dmr:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToActivityView(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0

    .line 419
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToActivityView(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0
.end method

.method public onItemClickPageInfo(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)V
    .locals 4
    .parameter "pageInfo"

    .prologue
    const/4 v3, 0x1

    .line 350
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 352
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: already loading..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_0
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    .line 358
    .local v0, gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v0           #gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    .line 361
    .restart local v0       #gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    :cond_1
    if-eqz v0, :cond_3

    .line 363
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->getLoadMoreState()Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 365
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: request loading processing..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->setLoadMoreState(Z)V

    .line 374
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 376
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onPageUp()V

    .line 377
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: start loading up..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v3, v1, :cond_5

    .line 381
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onPageDown()V

    .line 382
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: start loading down..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_5
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: page direction wrong..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onItemSelected(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 328
    .local v0, objItem:Lcom/htc/sunny2/IMediaData;
    if-nez v0, :cond_1

    .line 330
    const-string v1, "SceneDlnaGridview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneDlnaGridview][onItemSelected]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v0           #objItem:Lcom/htc/sunny2/IMediaData;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v0       #objItem:Lcom/htc/sunny2/IMediaData;
    :cond_1
    instance-of v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v1, :cond_2

    .line 337
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v0           #objItem:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onItemClickPageInfo(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)V

    goto :goto_0

    .line 339
    .restart local v0       #objItem:Lcom/htc/sunny2/IMediaData;
    :cond_2
    instance-of v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v1, :cond_0

    .line 341
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v0           #objItem:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {p0, p1, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onItemClickMediumInfo(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 899
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 908
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onMessage(Landroid/os/Message;)Z

    .line 910
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 902
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->continueBrowseDown()V

    goto :goto_0

    .line 899
    :pswitch_data_0
    .packed-switch 0x4e84
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 89
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onNewAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 93
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 95
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setDataBundle(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onLoadData()V

    .line 98
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onNotifyUpdateComplete]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onNotifyUpdateComplete()V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    .line 85
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 3
    .parameter "bIsLoading"

    .prologue
    .line 75
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onNotifyUpdating]bIsLoading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onNotifyUpdating(Z)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    .line 78
    return-void
.end method

.method public onPageDown()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->browseNextPage()V

    goto :goto_0
.end method

.method public onPageUp()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->browsePreviousPage()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onPause]:pause..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onPause()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 181
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 182
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onResume]:resume..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onResume()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 167
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    .line 169
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->isServiceActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->continueBrowseDown()V

    .line 173
    :cond_0
    return-void
.end method

.method protected onScrollStateChanged(I)V
    .locals 3
    .parameter "scrollState"

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onScrollStateChanged(I)V

    .line 310
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    if-eqz v0, :cond_2

    .line 315
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onScrollStateChange]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getChildrenCount()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setScrollState(III)V

    goto :goto_0

    .line 320
    :cond_2
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onScrollStateChagne]: scene activity is push to background"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 274
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onSendToBackground]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 277
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 279
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 281
    :cond_0
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 123
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onSendToForeground]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 126
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneQuality(Z)V

    .line 130
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setHandler(Landroid/os/Handler;)V

    .line 131
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->SCENE_ID:I

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneType(I)V

    .line 133
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->isServiceActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->continueBrowseDown()V

    .line 144
    :goto_1
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onSendToForeground]: trigger refresh..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onStart]:start..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onStart()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 156
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    .line 158
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onStop]:stop..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onStop()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 190
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 192
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 194
    :cond_0
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 268
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onUnbindAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onUnbindAdapter()V

    .line 270
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 271
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "SceneDlnaGridview"

    return-object v0
.end method

.method public showOutputChoice()V
    .locals 6

    .prologue
    .line 694
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v0

    .line 695
    .local v0, pos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0x1398

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 698
    return-void
.end method
