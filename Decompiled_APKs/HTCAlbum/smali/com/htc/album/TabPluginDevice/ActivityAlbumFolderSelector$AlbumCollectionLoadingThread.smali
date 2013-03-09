.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
.super Ljava/lang/Thread;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCollectionLoadingThread"
.end annotation


# instance fields
.field private mCollectionMgr:Lcom/htc/album/helper/FolderManager;

.field private mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingRequest:Z

.field private final mLocker:Ljava/lang/Object;

.field private mSaveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveRequest:Z

.field private mStop:Z

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "n"
    .parameter "uiHandler"

    .prologue
    const/4 v1, 0x0

    .line 799
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 800
    const-string v0, "AlbumCollectionLoadingThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 789
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    .line 801
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    .line 802
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

    .line 803
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    .line 804
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    .line 805
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    .line 806
    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

    return-object v0
.end method

.method private onLoadData()V
    .locals 12

    .prologue
    .line 874
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 878
    .local v8, thisActivity:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v11, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERLIST:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 886
    .local v4, mTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v11, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 891
    .local v3, isHidden:Z
    if-nez v4, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    const/4 v9, 0x1

    if-ne v9, v3, :cond_6

    .line 896
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v11, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 900
    .local v2, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v0, 0x0

    .line 901
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v1, 0x0

    .line 902
    .local v1, hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v5, 0x0

    .line 904
    .local v5, nCount:I
    if-eqz v2, :cond_2

    .line 905
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 907
    :cond_2
    const/4 v6, 0x0

    .local v6, nHiddenIndex:I
    :goto_1
    if-le v5, v6, :cond_6

    .line 909
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v1, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v1       #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v1, :cond_4

    .line 907
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 912
    :cond_4
    const/4 v7, 0x0

    .local v7, nIndex:I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v7, :cond_3

    .line 914
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 915
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 916
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setVisibility(I)V

    .line 912
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 921
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v1           #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v2           #hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .end local v5           #nCount:I
    .end local v6           #nHiddenIndex:I
    .end local v7           #nIndex:I
    :cond_6
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mDataUpdateNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    if-nez v9, :cond_0

    .line 922
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread$1;

    invoke-direct {v10, p0, v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread$1;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private onSaveData(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p1, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 863
    .local v0, thisActivity:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
    if-eqz p1, :cond_0

    .line 864
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    :cond_0
    return-void
.end method


# virtual methods
.method public doLoading()V
    .locals 2

    .prologue
    .line 846
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 847
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    .line 848
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 849
    monitor-exit v1

    .line 850
    return-void

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doSave(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p1, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 854
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    .line 855
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveList:Ljava/util/ArrayList;

    .line 856
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 857
    monitor-exit v1

    .line 858
    return-void

    .line 857
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doStop()V
    .locals 2

    .prologue
    .line 839
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 840
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    .line 841
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 842
    monitor-exit v1

    .line 843
    return-void

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 809
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    if-nez v1, :cond_0

    .line 810
    new-instance v1, Lcom/htc/album/helper/FolderManager;

    invoke-direct {v1}, Lcom/htc/album/helper/FolderManager;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    .line 813
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mStop:Z

    if-nez v1, :cond_3

    .line 814
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 816
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    if-nez v1, :cond_1

    .line 817
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    if-ne v4, v1, :cond_2

    .line 826
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->onLoadData()V

    .line 827
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mLoadingRequest:Z

    .line 830
    :cond_2
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    if-ne v4, v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->onSaveData(Ljava/util/ArrayList;)V

    .line 832
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->mSaveRequest:Z

    goto :goto_0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 823
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 836
    :cond_3
    return-void
.end method
