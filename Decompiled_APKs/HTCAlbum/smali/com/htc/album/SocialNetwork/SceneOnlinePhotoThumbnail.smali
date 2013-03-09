.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;
.super Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;
.source "SceneOnlinePhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase",
        "<",
        "Lcom/htc/album/SocialNetwork/LivePhotoAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_ONLINE_THUMBNAIL_VIEW:I = 0x1

.field private static final HEADER_BAR_ONLINE_THUMBNAIL_VIEW:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "SceneOnlinePhotoThumbnail"


# instance fields
.field protected mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

.field protected mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

.field protected mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentAnimState:I

.field private mCurrentPickerMode:I

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

.field private mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

.field protected mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

.field private mIsDeleteAll:Z

.field private mIsFirstClick:Z

.field protected mIsNewAdapter:Z

.field private mIsNoListAndFirstUpdate:Z

.field private mIsPluginDelete:Z

.field private mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mLoadingText:Ljava/lang/String;

.field private mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mNoPhotoListAndCache:Z

.field private mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field private mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected mScrollState:I

.field protected mShareIntent:Landroid/content/Intent;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mShareSelection:I

.field private mUpdateHeaderThumbnail:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    .line 82
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareSelection:I

    .line 83
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 84
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 85
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 87
    iput v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mScrollState:I

    .line 89
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 90
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    .line 91
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    .line 92
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    .line 93
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    .line 94
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 95
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mNoPhotoListAndCache:Z

    .line 96
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 97
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 98
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 99
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    .line 100
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z

    .line 101
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    .line 102
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mUpdateHeaderThumbnail:Z

    .line 103
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 105
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v4, v4, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 109
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 136
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 1506
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1550
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/view/Vector3F;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z

    return p1
.end method

.method static synthetic access$902(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    return p1
.end method

.method private doRequestPickerList(Landroid/os/Message;)V
    .locals 11
    .parameter "message"

    .prologue
    const/4 v10, 0x0

    .line 1368
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v7, :cond_2

    .line 1370
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1371
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1375
    .local v3, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1376
    .local v0, aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .local v2, i:I
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, size:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 1378
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1379
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1382
    .end local v6           #size:I
    :catch_0
    move-exception v1

    .line 1384
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "SceneOnlinePhotoThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create photo id list failed. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1389
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1390
    .local v5, msg:Landroid/os/Message;
    const v7, 0x10300001

    iput v7, v5, Landroid/os/Message;->what:I

    .line 1391
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1392
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v7, v5}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onUIHandlerMessage(Landroid/os/Message;)V

    .line 1409
    .end local v0           #aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v2           #i:I
    .end local v3           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 1404
    :cond_2
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    invoke-virtual {v7, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->cancel(Z)Z

    .line 1405
    :cond_3
    new-instance v7, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPickList:Ljava/util/ArrayList;

    invoke-direct {v7, p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Ljava/util/ArrayList;)V

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    .line 1406
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private launchOnlneEditor(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v7, 0x0

    .line 1412
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1414
    :cond_0
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][launchOnlneEditor]: NG ! List is 0 or NULL ! "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    :goto_0
    return-void

    .line 1418
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 1420
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][launchOnlneEditor]: mSceneBundle is null "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1424
    :cond_2
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1425
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    .local v2, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1430
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "service_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1431
    .local v3, szService:Ljava/lang/String;
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][onNewAdapter]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v4, "photo_list"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1435
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SceneOnlinePhotoTagEditor"

    invoke-interface {v4, v1, v5, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private onDelete(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/helper/OnlineDeleteManager;->deleteMultipleMedia(Ljava/util/ArrayList;)V

    .line 610
    return-void
.end method

.method private onItemClicked(I)Z
    .locals 9
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1089
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1091
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1093
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v3, mediaIntent:Landroid/content/Intent;
    :try_start_0
    const-string v4, "com.htc.video"

    const-string v5, "com.htc.video.ViewVideo"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getVideoUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "Video/mp4"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1099
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #mediaIntent:Landroid/content/Intent;
    :goto_0
    move v4, v6

    .line 1121
    :goto_1
    return v4

    .line 1101
    .restart local v3       #mediaIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1103
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not launch view player. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1108
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #mediaIntent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    .line 1110
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1111
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "index_id"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1112
    const-string v4, "refresh_by_delete"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1113
    const-string v4, "refresh_by_delete_all"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1114
    const-string v4, "my_live_album"

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "my_live_album"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1118
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v7, "SceneOnlinePhotoFullscreen"

    invoke-interface {v4, v1, v7, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 284
    .local v0, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 286
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 293
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    goto :goto_0

    .line 288
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onOpenSenseControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 567
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 577
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v7, :cond_0

    .line 579
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v5

    .line 580
    .local v5, selid:I
    const/4 v4, 0x0

    .line 581
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v7}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v6

    .local v6, size:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 583
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v7, v2}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v1

    .line 585
    .local v1, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 587
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v7, v1, v8, v9}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    .line 606
    .end local v1           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v2           #i:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    .end local v5           #selid:I
    .end local v6           #size:I
    :cond_0
    :goto_1
    return-void

    .line 570
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onBackPressed()Z

    goto :goto_1

    .line 573
    :sswitch_1
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 590
    .restart local v1       #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v2       #i:I
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    .restart local v5       #selid:I
    .restart local v6       #size:I
    :cond_1
    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v4

    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    check-cast v4, Ljava/util/ArrayList;

    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v4, :cond_3

    .line 592
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 594
    .local v0, b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v7

    if-ne v7, v5, :cond_2

    .line 596
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v7, v0, v8, v9}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    goto :goto_1

    .line 581
    .end local v0           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private onRefresh(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 627
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 634
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v1, 0x4e28

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onScrollIdle()V
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onScrollIdle()V

    .line 1472
    :cond_0
    return-void
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 1439
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1440
    .local v1, scrollState:I
    const-string v2, "SceneOnlinePhotoThumbnail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlinePhotoThumbnail][onScrollStateChanged]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v0, 0x4f4e

    .line 1446
    .local v0, adapterScrollState:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setScrollState(II)V

    .line 1449
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mScrollState:I

    if-ne v2, v1, :cond_2

    .line 1467
    :goto_1
    return-void

    .line 1442
    .end local v0           #adapterScrollState:I
    :cond_1
    const/16 v0, 0x4f4d

    goto :goto_0

    .line 1452
    .restart local v0       #adapterScrollState:I
    :cond_2
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mScrollState:I

    .line 1454
    packed-switch v1, :pswitch_data_0

    .line 1464
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onScrollIdle()V

    goto :goto_1

    .line 1457
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onScrollIdle()V

    goto :goto_1

    .line 1461
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onScrollIdle()V

    goto :goto_1

    .line 1454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onScrolling()V
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onScrolling()V

    .line 1477
    :cond_0
    return-void
.end method

.method private onShare(I)V
    .locals 4
    .parameter "selection"

    .prologue
    .line 614
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoThumbnail][onShare]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareSelection:I

    .line 616
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 617
    .local v0, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    const/4 v1, 0x0

    .line 619
    .local v1, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSourceInfo()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {p0, p1, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShareAlbumLink(ILjava/lang/Object;)V

    .line 623
    :cond_0
    return-void
.end method

.method private onShareLink(Ljava/lang/Object;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 640
    if-nez p1, :cond_1

    .line 653
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 643
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    .line 644
    .local v1, szUrl:Ljava/lang/String;
    const/4 v0, 0x0

    .line 645
    .local v0, szLink:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, szWebLink:Ljava/lang/String;
    move-object v3, p1

    .line 647
    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 648
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 649
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object v2, v1

    .line 651
    :goto_1
    if-eqz v2, :cond_0

    .line 652
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x20c0201

    invoke-virtual {v3, v4, v5, v2}, Lcom/htc/album/helper/MenuManager;->gotoShareLink(Landroid/content/Context;ILjava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 649
    goto :goto_1
.end method

.method private prepareLoadingText(I)V
    .locals 2
    .parameter "nResID"

    .prologue
    .line 1510
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1512
    .local v0, activity:Landroid/app/Activity;
    if-nez p1, :cond_0

    .line 1514
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onGetLoadingMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    .line 1520
    :goto_0
    return-void

    .line 1518
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    const-string v0, "LivePhotoAdapter"

    return-object v0
.end method

.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x1

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 1252
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading(ZI)V
    .locals 3
    .parameter "bShow"
    .parameter "nResID"

    .prologue
    .line 1356
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1357
    invoke-direct {p0, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->prepareLoadingText(I)V

    .line 1359
    :cond_0
    const-string v0, "SceneOnlinePhotoThumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoThumbnail][enableProgressLoading]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 1361
    return-void
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 1352
    const/4 v0, 0x1

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 1480
    const/4 v0, 0x2

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 499
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, szTitle:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 513
    :goto_0
    return-object v2

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_2

    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 504
    :cond_2
    const/4 v0, 0x0

    .line 505
    .local v0, nCount:I
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "album_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_0

    .line 508
    :cond_3
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v2, v1

    .line 513
    goto :goto_0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    const-string v1, "SceneOnlinePhotoThumbnail"

    const-string v2, "OnActivityResult: pass to data plugin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onUIActivityResult(IILandroid/content/Intent;)V

    .line 323
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 686
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    :goto_0
    return v1

    .line 688
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 690
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 5

    .prologue
    .line 937
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onBindAdapter()V

    .line 938
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 939
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v2}, Lcom/htc/album/addons/SceneScrollCacheHandler;->scrollListener()Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 942
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 943
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 944
    new-instance v2, Lcom/htc/album/helper/OnlineDeleteManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/htc/album/helper/OnlineDeleteManager;-><init>(Landroid/app/Activity;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;)V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 947
    :cond_1
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1486
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1492
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1498
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1067
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 1068
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SPACE_THUMBNAIL_ITEM_PORT:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 1069
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SPACE_THUMBNAIL_ITEM_PORT:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 1070
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1073
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1074
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1076
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    .line 736
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 769
    :goto_0
    return v5

    .line 738
    :cond_0
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v4, v5, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 740
    .local v4, position:I
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 741
    .local v1, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    if-eqz v1, :cond_2

    .line 743
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v3

    .line 745
    .local v3, photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v3, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1, p1, v4, v5}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onContextItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 748
    .end local v3           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_2
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 750
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 751
    .local v2, objSelected:Ljava/lang/Object;
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    .line 753
    .local v2, objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 765
    const-string v5, "SceneOnlinePhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][onContextItemSelected] Unsupported context menu operation."

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .end local v2           #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 756
    .restart local v2       #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onItemSelected(I)Z

    goto :goto_2

    .line 759
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShareLink(Ljava/lang/Object;)V

    goto :goto_2

    .line 762
    :sswitch_2
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local v2           #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-static {v0, v2}, Lcom/htc/album/helper/MenuManager;->launchComments(Landroid/app/Activity;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V

    goto :goto_2

    .line 753
    :sswitch_data_0
    .sparse-switch
        0x7f0a008e -> :sswitch_0
        0x7f0a00a1 -> :sswitch_1
        0x7f0a00a3 -> :sswitch_2
    .end sparse-switch
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
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 525
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPickerMode:I

    if-eqz v0, :cond_0

    .line 527
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    .line 563
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v0, :cond_1

    .line 533
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onOpenSenseControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 540
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShare(I)V

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 559
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    .line 560
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    goto :goto_0

    .line 547
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onBackPressed()Z

    goto :goto_0

    .line 550
    :sswitch_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 553
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(I)V

    goto :goto_0

    .line 556
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEdit()V

    goto :goto_0

    .line 544
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0xa -> :sswitch_4
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 785
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentAnimState:I

    .line 786
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 787
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 790
    :cond_0
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPickerMode:I

    if-eqz v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iput-object p3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 707
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 1545
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/helper/OnlineDeleteManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1546
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1547
    .end local v0           #dlg:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .restart local v0       #dlg:Landroid/app/Dialog;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 473
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    .line 474
    .local v1, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-eqz v1, :cond_0

    move-object v4, v1

    .line 491
    :goto_0
    return-object v4

    .line 476
    :cond_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 477
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 479
    :cond_2
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 480
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    .line 482
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v6, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v3

    .line 484
    .local v3, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    .line 486
    const/16 v4, 0xa

    invoke-virtual {v1, v0, v6, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 487
    const/16 v4, 0x11

    invoke-virtual {v1, v0, v6, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v2

    .line 488
    .local v2, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v4, 0x2

    const v5, 0x7f0b010a

    invoke-virtual {v2, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 489
    const/4 v4, 0x6

    const v5, 0x7f0b010b

    invoke-virtual {v2, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    move-object v4, v1

    .line 491
    goto :goto_0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 4
    .parameter "id"

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 301
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 312
    :goto_0
    return-object v2

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 304
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 308
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 309
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 310
    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    move-object v2, v1

    .line 312
    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1033
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onCreateScene]: ..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v2

    .line 1037
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/GridView;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1038
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1039
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v4, "Activity is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const/4 v2, 0x0

    .line 1056
    .end local v2           #gridview:Lcom/htc/sunny2/widget/gridview/GridView;
    :goto_0
    return-object v2

    .line 1042
    .restart local v2       #gridview:Lcom/htc/sunny2/widget/gridview/GridView;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1044
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 1046
    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SPACE_THUMBNAIL_ITEM_PORT:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 1047
    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SPACE_THUMBNAIL_ITEM_PORT:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 1049
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 1051
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 1084
    new-instance v1, Lcom/htc/album/Animation/animationSetGridview;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1061
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 1062
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 1063
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onDestroyScene()V

    .line 1064
    return-void
.end method

.method public onEdit()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 1502
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    .line 1503
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    .line 1504
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 913
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 914
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewList()Z

    move-result v0

    .line 915
    .local v0, bEnableScrollCache:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-nez v2, :cond_0

    .line 917
    new-instance v3, Lcom/htc/album/addons/SceneScrollCacheHandler;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v3, v4, v2, p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;-><init>(Landroid/app/Activity;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/scene/GalleryBaseScene;Z)V

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 922
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->setHeaderControlStatusListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V

    .line 924
    :cond_0
    if-eqz v0, :cond_1

    .line 926
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 927
    .local v1, gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->enableScrollingCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    .line 928
    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->enableScrollingCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    .line 930
    .end local v1           #gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createControlBar(II)V

    .line 931
    invoke-virtual {p0, v6, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createControlBar(II)V

    .line 933
    return-void
.end method

.method public onErrorNoList()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1197
    const-string v7, "SceneOnlinePhotoThumbnail"

    const-string v8, "[HTCAlbum][SceneOnlinePhotoThumbnail][onErrorNoList]: ..."

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const/4 v2, 0x0

    .line 1200
    .local v2, isPhotoListSizeChanged:Z
    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mNoPhotoListAndCache:Z

    if-nez v7, :cond_0

    .line 1202
    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mNoPhotoListAndCache:Z

    .line 1203
    const/4 v2, 0x1

    .line 1206
    :cond_0
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1207
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 1249
    :cond_1
    :goto_0
    return-void

    .line 1209
    :cond_2
    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z

    if-eq v9, v7, :cond_3

    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    if-ne v9, v7, :cond_4

    .line 1211
    :cond_3
    invoke-virtual {p0, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 1213
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1214
    .local v3, nBundle:Landroid/os/Bundle;
    const-string v7, "refresh_by_delete_all"

    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1215
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v8, "SceneOnlineFolder"

    invoke-interface {v7, v3, v8, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1218
    .end local v3           #nBundle:Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p0, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnablePageLoading(Z)V

    .line 1220
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 1221
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v7, p0, v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 1223
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-nez v7, :cond_5

    .line 1225
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1226
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03002f

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLayoutPageView:Landroid/widget/RelativeLayout;

    .line 1228
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_5
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v8, 0x7f0a0011

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1229
    .local v6, textView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v8, 0x7f0a0070

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 1231
    .local v4, progressBar:Landroid/widget/ProgressBar;
    const/4 v5, 0x0

    .line 1232
    .local v5, szMessage:Ljava/lang/String;
    const v7, 0x7f0b0042

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1233
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1236
    invoke-virtual {p0, v10, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1237
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1239
    if-ne v9, v2, :cond_6

    .line 1241
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->invalidateControlBars()V

    .line 1244
    :cond_6
    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    if-ne v9, v7, :cond_1

    .line 1246
    iput-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 1247
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v8, 0x4e28

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected onGetLoadingMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1532
    const-string v1, ""

    .line 1533
    .local v1, szLoading:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1539
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1540
    return-object v1
.end method

.method protected onGetNormalFooterId()I
    .locals 1

    .prologue
    .line 1523
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetNormalHeaderId()I
    .locals 1

    .prologue
    .line 1527
    const/4 v0, 0x2

    return v0
.end method

.method protected onItemSelected(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1127
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onItemSelected(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 1146
    :cond_0
    :goto_0
    return v2

    .line 1129
    :cond_1
    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    if-eqz v4, :cond_0

    .line 1130
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 1132
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v1, Lcom/htc/album/Animation/animationSetGridview;

    .line 1133
    .local v1, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v1, p1, v2}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunny2/view/Vector3F;)V

    .line 1136
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1138
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v2, :cond_3

    .line 1140
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, p1, v2}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onThumbItemClicked(ILjava/lang/String;)Z

    .line 1141
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    :goto_2
    move v2, v3

    .line 1146
    goto :goto_0

    .line 1140
    :cond_2
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1144
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onItemClicked(I)Z

    goto :goto_2
.end method

.method public onLeaveScene()V
    .locals 1

    .prologue
    .line 981
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onLeaveScene()V

    .line 982
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->uninitialize()V

    .line 984
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 985
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1257
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onMessage(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1348
    :goto_0
    return v2

    .line 1258
    :cond_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v4, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 1260
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    :cond_3
    :goto_1
    move v2, v3

    .line 1348
    goto :goto_0

    .line 1263
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onErrorNoList()V

    goto :goto_1

    .line 1266
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onSyncList(Landroid/os/Message;)V

    goto :goto_1

    .line 1269
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_1

    .line 1272
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onSyncAlbumInfo()V

    goto :goto_1

    .line 1275
    :sswitch_4
    const v4, 0x7f0b00c6

    invoke-virtual {p0, v2, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_1

    .line 1278
    :sswitch_5
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_1

    .line 1281
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->doRequestPickerList(Landroid/os/Message;)V

    goto :goto_1

    .line 1285
    :sswitch_7
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1286
    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    if-ne v4, v5, :cond_5

    .line 1287
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    .line 1288
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->launchOnlneEditor(Ljava/util/ArrayList;)V

    .line 1292
    :cond_4
    :goto_2
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    goto :goto_1

    .line 1289
    :cond_5
    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    if-ne v4, v2, :cond_4

    .line 1290
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onDelete(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1295
    :sswitch_8
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_1

    .line 1298
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->requestDecodeHeaderPhoto()Z

    goto :goto_1

    .line 1301
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1302
    .local v0, nBackBmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 1304
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 1305
    .local v1, nHeaderBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    if-nez v1, :cond_6

    .line 1307
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoThumbnail][requestDecodeHeaderPhoto] nHeaderBar is null, Decode -"

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1311
    :cond_6
    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1312
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mUpdateHeaderThumbnail:Z

    .line 1313
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoThumbnail][requestDecodeHeaderPhoto] Decode -"

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1316
    .end local v0           #nBackBmp:Landroid/graphics/Bitmap;
    .end local v1           #nHeaderBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    :sswitch_b
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(I)V

    goto :goto_1

    .line 1319
    :sswitch_c
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 1320
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onItemClicked(I)Z

    goto :goto_1

    .line 1323
    :sswitch_d
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_7

    .line 1325
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    .line 1326
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    .line 1327
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(I)V

    goto/16 :goto_1

    .line 1329
    :cond_7
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_3

    .line 1331
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    goto/16 :goto_1

    .line 1335
    :sswitch_e
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    goto/16 :goto_1

    .line 1338
    :sswitch_f
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onLoadingOrDecodingThumbnails(I)V

    goto/16 :goto_1

    .line 1341
    :sswitch_10
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto/16 :goto_1

    .line 1344
    :sswitch_11
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    goto/16 :goto_1

    .line 1260
    :sswitch_data_0
    .sparse-switch
        0x2730 -> :sswitch_4
        0x2731 -> :sswitch_5
        0x2761 -> :sswitch_0
        0x276a -> :sswitch_8
        0x4e42 -> :sswitch_6
        0x4e45 -> :sswitch_9
        0x4e87 -> :sswitch_3
        0x4e88 -> :sswitch_1
        0x4ea1 -> :sswitch_7
        0x4ea4 -> :sswitch_a
        0x4f4f -> :sswitch_2
        0x5079 -> :sswitch_f
        0x10200001 -> :sswitch_b
        0x10200002 -> :sswitch_c
        0x10200006 -> :sswitch_e
        0x10200007 -> :sswitch_d
        0x10200008 -> :sswitch_11
        0x10200009 -> :sswitch_10
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1004
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 1005
    iput-boolean v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    .line 1006
    new-instance v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 1007
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 1008
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataRequest(Ljava/lang/Object;)V

    .line 1009
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const-string v6, "from_albumhost"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setInternal(Z)V

    .line 1010
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onCreate()V

    .line 1012
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v3

    .line 1013
    .local v3, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v4, "service_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 1015
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateThumbPhotoListPlugin()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 1018
    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, pid:Ljava/lang/String;
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create opensense data plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    new-instance v6, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v4, v0, v6, v1}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createThumbPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 1021
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v4, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    .line 1022
    invoke-virtual {p0, v10, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createControlBar(II)V

    .line 1025
    .end local v1           #pid:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-virtual {v4, v10, v5, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 1028
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onResume()V

    .line 1029
    invoke-virtual {p0, v8, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1030
    return-void

    .end local v0           #dataplugin:Ljava/lang/String;
    :cond_1
    move-object v0, v5

    .line 1015
    goto :goto_0
.end method

.method public onNotifyUpdateComplete()V
    .locals 0

    .prologue
    .line 1155
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 988
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPause()V

    .line 989
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onPause()V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 995
    :cond_1
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 1
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 795
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 797
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableInvalidateWhenShow(Z)V

    .line 798
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentAnimState:I

    packed-switch v0, :pswitch_data_0

    .line 812
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableInvalidateWhenShow(Z)V

    .line 813
    return-void

    .line 802
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->showControlBars()V

    goto :goto_0

    .line 808
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->hideControlBars()V

    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 712
    check-cast p3, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 714
    .local v2, nPos:I
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 715
    .local v1, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    if-eqz v1, :cond_1

    .line 717
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v3

    .line 718
    .local v3, photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, p1, v2, v4}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onPrepareContextMenu(Landroid/view/Menu;ILjava/lang/String;)Z

    move-result v4

    .line 730
    .end local v3           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_1
    return v4

    .line 718
    .restart local v3       #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 721
    .end local v3           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 722
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 724
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x15000

    invoke-static {v4, p1, v5}, Lcom/htc/album/helper/MenuManager;->showPhotoMenuOnline(Landroid/app/Activity;Landroid/view/Menu;I)V

    .line 730
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 19
    .parameter "footer"

    .prologue
    .line 358
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mNoPhotoListAndCache:Z

    if-ne v1, v3, :cond_1

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 361
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    invoke-super/range {p0 .. p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 378
    .local v2, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "opensense_pugin"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_6

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v1, :cond_0

    .line 382
    new-instance v1, Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-direct {v1}, Lcom/htc/opensense/album/plugin/CommandBar;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z

    .line 385
    const/4 v8, 0x0

    .line 386
    .local v8, barSize:I
    const/4 v12, 0x0

    .local v12, i:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v17

    .local v17, size:I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v1, v12}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    add-int/lit8 v8, v8, 0x1

    .line 386
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 388
    :cond_4
    const/4 v1, 0x1

    if-lt v8, v1, :cond_0

    const/4 v1, 0x3

    if-gt v8, v1, :cond_0

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 392
    const/4 v1, 0x4

    new-array v14, v1, [[I

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    aput-object v3, v14, v1

    const/4 v1, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    aput-object v3, v14, v1

    const/4 v1, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    aput-object v3, v14, v1

    const/4 v1, 0x3

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    aput-object v3, v14, v1

    .line 393
    .local v14, indexTable:[[I
    aget-object v10, v14, v8

    .line 395
    .local v10, btnIndexTable:[I
    const/4 v12, 0x0

    array-length v0, v10

    move/from16 v17, v0

    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    aget v3, v10, v12

    invoke-virtual {v1, v3}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v9

    .line 398
    .local v9, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    const/4 v1, 0x0

    invoke-virtual {v9}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addEmptyButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v11

    check-cast v11, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 399
    .local v11, footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-virtual {v9}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v9}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 401
    .local v18, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v18, :cond_5

    .line 403
    invoke-virtual {v11}, Lcom/htc/album/modules/ui/widget/FooterButton;->clearBubble()V

    .line 404
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 405
    .local v7, b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v7}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v1

    invoke-virtual {v7}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v7}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_3

    .line 395
    .end local v7           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 448
    .end local v8           #barSize:I
    .end local v9           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v10           #btnIndexTable:[I
    .end local v11           #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v12           #i:I
    .end local v14           #indexTable:[[I
    .end local v17           #size:I
    .end local v18           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "flag_genuine"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7

    .line 450
    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const v6, 0x7f0b010b

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto/16 :goto_0

    .line 452
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mNoPhotoListAndCache:Z

    if-nez v1, :cond_8

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "my_live_album"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v1, v3, :cond_8

    .line 454
    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v16

    .line 456
    .local v16, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v1, v3, v0}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    .line 458
    const/4 v1, 0x0

    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 459
    const/4 v1, 0x0

    const/16 v3, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v15

    .line 460
    .local v15, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v1, 0x2

    const/4 v3, 0x0

    const v4, 0x7f0b010a

    invoke-virtual {v15, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 461
    const/4 v1, 0x6

    const/4 v3, 0x0

    const v4, 0x7f0b010b

    invoke-virtual {v15, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto/16 :goto_0

    .line 465
    .end local v15           #moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v16           #shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_8
    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v16

    .line 466
    .restart local v16       #shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v1, v3, v0}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    .line 467
    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const v6, 0x7f0b010b

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto/16 :goto_0

    .line 392
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 2
    .parameter "header"

    .prologue
    .line 349
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mNoPhotoListAndCache:Z

    if-ne v0, v1, :cond_0

    .line 351
    const v0, 0x7f02000e

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setTitle(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 951
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->cancel(Z)Z

    .line 952
    :cond_0
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    .line 954
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->cancel(Z)Z

    .line 955
    :cond_1
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    .line 957
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setVisibility(Z)V

    .line 958
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 959
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onSendToBackground(Landroid/os/Bundle;)V

    .line 962
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_3

    .line 963
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 965
    :cond_3
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 13
    .parameter "bundle"

    .prologue
    .line 836
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 837
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 838
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 840
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setUIHandler(Landroid/os/Handler;)V

    .line 841
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v9, :cond_0

    .line 843
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v9}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v8

    .line 844
    .local v8, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v9, "service_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 846
    .local v7, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateThumbPhotoListPlugin()Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 849
    const-string v9, "user_id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 850
    .local v6, pid:Ljava/lang/String;
    const-string v9, "SceneOnlinePhotoThumbnail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Create opensense data plugin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v9, v1, v10, v6}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createThumbPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 852
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createControlBar(II)V

    .line 856
    .end local v1           #dataplugin:Ljava/lang/String;
    .end local v6           #pid:Ljava/lang/String;
    .end local v7           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .end local v8           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_0
    const/4 v10, 0x1

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v9, v11}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    move-result v9

    if-ne v10, v9, :cond_1

    .line 858
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v9}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->notifyUpdateDataPlugin()V

    .line 861
    :cond_1
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridView;->setVisibility(Z)V

    .line 864
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v10, 0x2

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 868
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    .line 870
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v9}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-virtual {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 871
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onVerifyImageStatus(I)V

    .line 873
    const/4 v5, 0x0

    .line 874
    .local v5, nIsListChanged:Z
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v9, :cond_2

    .line 876
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    const-string v11, "refresh_by_delete"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-ne v9, v5, :cond_8

    .line 878
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    const-string v10, "refresh_by_delete"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 879
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 880
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->invalidateControlBars()V

    .line 889
    :cond_2
    :goto_1
    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mUpdateHeaderThumbnail:Z

    if-eq v9, v10, :cond_3

    const/4 v9, 0x1

    if-ne v9, v5, :cond_4

    :cond_3
    const/16 v9, 0x4e45

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 891
    :cond_4
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 892
    .local v0, activity:Landroid/app/Activity;
    instance-of v9, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v9, :cond_5

    move-object v4, v0

    .line 894
    check-cast v4, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 895
    .local v4, msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 896
    const/16 v9, 0x272c

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v4, v9, v10, v11}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    .line 899
    .end local v4           #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_5
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v10, "SceneOnlinePhotoFullscreen"

    invoke-interface {v9, v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v3

    .line 900
    .local v3, isExistFullscreen:Z
    if-eqz v3, :cond_6

    .line 902
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v2

    .line 903
    .local v2, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    if-eqz v2, :cond_6

    .line 904
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->invalidate()V

    .line 906
    .end local v2           #headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    :cond_6
    return-void

    .line 846
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #isExistFullscreen:Z
    .end local v5           #nIsListChanged:Z
    .restart local v7       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v8       #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 882
    .end local v7           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .end local v8           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    .restart local v5       #nIsListChanged:Z
    :cond_8
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    const-string v11, "refresh_by_delete_all"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-ne v9, v10, :cond_2

    .line 884
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    const-string v10, "refresh_by_delete_all"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 885
    const/16 v9, 0x2761

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onShareAlbumLink(ILjava/lang/Object;)V
    .locals 6
    .parameter "selection"
    .parameter "object"

    .prologue
    .line 656
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 658
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 659
    .local v2, szUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 660
    .local v1, szLink:Ljava/lang/String;
    const/4 v3, 0x0

    .line 662
    .local v3, szWebLink:Ljava/lang/String;
    instance-of v4, p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v4, :cond_3

    .line 664
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][onShareLink]: WrapperPhoto"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p2

    .line 665
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 666
    check-cast p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 667
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move-object v3, v2

    .line 675
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v4, v0, p1, v3}, Lcom/htc/album/helper/ShareMenuManager;->onSocialShareClick(Landroid/content/Context;ILjava/lang/String;)V

    .line 676
    return-void

    :cond_2
    move-object v3, v1

    .line 667
    goto :goto_0

    .line 670
    .restart local p2
    :cond_3
    instance-of v4, p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v4, :cond_1

    .line 672
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][onShareLink]: WrapperAlbum"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    check-cast p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getWebLink()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public onSyncAlbumInfo()V
    .locals 1

    .prologue
    .line 1193
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareSelection:I

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShare(I)V

    .line 1194
    return-void
.end method

.method public onSyncList(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, isPhotoListSizeChanged:Z
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mNoPhotoListAndCache:Z

    if-ne v4, v1, :cond_3

    .line 1161
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mNoPhotoListAndCache:Z

    .line 1162
    const/4 v0, 0x1

    .line 1172
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    if-eqz v1, :cond_4

    .line 1174
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v1, p0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 1176
    :cond_1
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1184
    :goto_1
    if-ne v4, v0, :cond_2

    .line 1186
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->invalidateControlBars()V

    .line 1189
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnablePageLoading(Z)V

    .line 1190
    return-void

    .line 1164
    :cond_3
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v4, v1, :cond_0

    .line 1166
    const/4 v0, 0x1

    goto :goto_0

    .line 1180
    :cond_4
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    .line 1181
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_1
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 970
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 971
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 972
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->cancelDeleteMedias()V

    .line 974
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->release()V

    .line 975
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 977
    :cond_0
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onUnbindAdapter()V

    .line 978
    return-void
.end method

.method public requestDecodeHeaderPhoto()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 343
    :goto_0
    return v3

    .line 329
    :cond_1
    const/4 v0, 0x0

    .line 330
    .local v0, nContext:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    move v3, v4

    goto :goto_0

    .line 332
    :cond_2
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v1

    .line 333
    .local v1, nPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v1, :cond_3

    move v3, v4

    goto :goto_0

    .line 335
    :cond_3
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, nPhotoPath:Ljava/lang/String;
    if-nez v2, :cond_4

    move v3, v4

    goto :goto_0

    .line 338
    :cond_4
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][requestDecodeHeaderPhoto] Decode +"

    invoke-static {v3, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    invoke-virtual {v3, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->cancel(Z)Z

    .line 340
    :cond_5
    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    invoke-direct {v3, p0, v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    .line 341
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    new-array v6, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v3, v5

    .line 343
    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    const-string v0, "SceneOnlinePhotoThumbnail"

    return-object v0
.end method
